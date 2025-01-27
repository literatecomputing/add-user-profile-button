import { apiInitializer } from "discourse/lib/api";
import AddLinkButton from "../components/add-link-button";
export default apiInitializer("1.14.0", (api) => {
  api.renderInOutlet("user-card-below-message-button", AddLinkButton);
  api.renderInOutlet("user-profile-controls", AddLinkButton);
});
