import Component from "@glimmer/component";
import { service } from "@ember/service";
import DButton from "discourse/components/d-button";
import concatClass from "discourse/helpers/concat-class";

export default class AddLinkButton extends Component {
  @service currentUser;
  get showUserButton() {
    // Safely fetch the user model from the outlet arguments.
    const groups = this.currentUser?.groups || [];
    const isExempt = groups.filter(
      (group) => group.name === settings.exempt_group
    );
    // If the user is in the exempt group, don't show the button.
    return isExempt.length === 0;
  }

  <template>
    {{#if this.showUserButton}}
      <DButton
        @icon={{settings.button_icon}}
        @translatedLabel={{settings.button_text}}
        class={{concatClass "btn extra-profile-button"}}
        @href={{settings.button_url}}
      />
    {{/if}}
  </template>
}
