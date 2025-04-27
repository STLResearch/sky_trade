import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        emailShareLinkBaseScheme,
        emailShareLinkBodyQueryParameterKey,
        emailShareLinkSubjectQueryParameterKey,
        facebookShareLinkUrlQueryParameterKey,
        facebookWebShareLinkBaseUrl,
        linkedInAppShareLinkBaseUrl,
        linkedInShareLinkUrlQueryParameterKey,
        linkedInWebShareLinkBaseUrl,
        xAppShareLinkBaseUrl,
        xShareLinkMessageQueryParameterKey,
        xShareLinkTextQueryParameterKey,
        xShareLinkUrlQueryParameterKey,
        xWebShareLinkBaseUrl;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show ampersand, colon, equals, question, whiteSpace;
import 'package:sky_trade/core/utils/enums/ui.dart'
    show Socials, SocialsLinkType;

part 'socials_link_bloc.freezed.dart';

part 'socials_link_event.dart';

part 'socials_link_state.dart';

class SocialsLinkBloc extends Bloc<SocialsLinkEvent, SocialsLinkState> {
  SocialsLinkBloc()
      : super(
          const SocialsLinkState.initial(),
        ) {
    on<_ComputeLinkFrom>(
      _computeLinkFrom,
    );
  }

  Future<void> _computeLinkFrom(
    _ComputeLinkFrom event,
    Emitter<SocialsLinkState> emit,
  ) async {
    emit(
      const SocialsLinkState.computingLink(),
    );

    final deepLink = _computeDeepLinkFrom(
      socials: event.socials,
      referralLink: event.referralLink,
      title: event.title,
      message: event.message,
      linkType: event.linkType,
    );

    emit(
      SocialsLinkState.computedLink(
        deepLink: deepLink,
        socials: event.socials,
        referralLink: event.referralLink,
        title: event.title,
        message: event.message,
        linkType: event.linkType,
      ),
    );
  }

  String _computeDeepLinkFrom({
    required Socials socials,
    required String referralLink,
    required String title,
    required String message,
    required SocialsLinkType linkType,
  }) =>
      switch (socials) {
        Socials.facebook => facebookWebShareLinkBaseUrl +
            question +
            facebookShareLinkUrlQueryParameterKey +
            equals +
            referralLink,
        Socials.linkedIn => switch (linkType) {
            SocialsLinkType.appLink => linkedInAppShareLinkBaseUrl +
                question +
                linkedInShareLinkUrlQueryParameterKey +
                equals +
                referralLink,
            SocialsLinkType.webLink => linkedInWebShareLinkBaseUrl +
                question +
                linkedInShareLinkUrlQueryParameterKey +
                equals +
                referralLink,
          },
        Socials.email => emailShareLinkBaseScheme +
            colon +
            question +
            emailShareLinkSubjectQueryParameterKey +
            equals +
            title +
            ampersand +
            emailShareLinkBodyQueryParameterKey +
            equals +
            message +
            colon +
            whiteSpace +
            referralLink,
        Socials.x => switch (linkType) {
            SocialsLinkType.appLink => xAppShareLinkBaseUrl +
                question +
                xShareLinkMessageQueryParameterKey +
                equals +
                message +
                colon +
                whiteSpace +
                referralLink,
            SocialsLinkType.webLink => xWebShareLinkBaseUrl +
                question +
                xShareLinkUrlQueryParameterKey +
                equals +
                referralLink +
                ampersand +
                xShareLinkTextQueryParameterKey +
                equals +
                message +
                colon +
                whiteSpace,
          },
      };
}
