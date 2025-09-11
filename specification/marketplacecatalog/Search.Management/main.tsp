import "@typespec/rest";
import "@typespec/versioning";
import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";

using Azure.ResourceManager;
using TypeSpec.Versioning;

@doc("Microsoft Marketplace Discovery APIs")
@armProviderNamespace("Microsoft.Marketplace")
@service(#{ title: "Microsoft Marketplace Discovery APIs" })
@versioned(Versions)
@armCommonTypesVersion(Azure.ResourceManager.CommonTypes.Versions.v6)
namespace Microsoft.Marketplace;

@doc("The currently supported API versions for the Microsoft Marketplace Discovery APIs.")
enum Versions {
  @doc("The 2025-05-01 service API version")
  @useDependency(Azure.ResourceManager.Versions.v1_0_Preview_1)
  @useDependency(Azure.Core.Versions.v1_0_Preview_1)
  `2025-05-01`,
}

interface Operations extends Azure.ResourceManager.Operations {}
