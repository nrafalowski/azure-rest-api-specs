import "@typespec/rest";
import "@typespec/versioning";
import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";

using Azure.ResourceManager;
using TypeSpec.Versioning;

namespace Microsoft.Marketplace;

@doc("The currently supported API versions for the Microsoft Marketplace Discovery APIs.")
enum Versions {
  @doc("The 2025-05-01 service API version")
  `2025-05-01`,
}
