{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.ServiceCatalog
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2015-12-10@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- AWS Service Catalog
--
-- <https://aws.amazon.com/servicecatalog/ AWS Service Catalog> enables
-- organizations to create and manage catalogs of IT services that are
-- approved for AWS. To get the most out of this documentation, you should
-- be familiar with the terminology discussed in
-- <http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html AWS Service Catalog Concepts>.
module Network.AWS.ServiceCatalog
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** InvalidParametersException
    _InvalidParametersException,

    -- ** DuplicateResourceException
    _DuplicateResourceException,

    -- ** OperationNotSupportedException
    _OperationNotSupportedException,

    -- ** TagOptionNotMigratedException
    _TagOptionNotMigratedException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InvalidStateException
    _InvalidStateException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ImportAsProvisionedProduct
    ImportAsProvisionedProduct (ImportAsProvisionedProduct'),
    newImportAsProvisionedProduct,
    ImportAsProvisionedProductResponse (ImportAsProvisionedProductResponse'),
    newImportAsProvisionedProductResponse,

    -- ** DeleteConstraint
    DeleteConstraint (DeleteConstraint'),
    newDeleteConstraint,
    DeleteConstraintResponse (DeleteConstraintResponse'),
    newDeleteConstraintResponse,

    -- ** UpdateConstraint
    UpdateConstraint (UpdateConstraint'),
    newUpdateConstraint,
    UpdateConstraintResponse (UpdateConstraintResponse'),
    newUpdateConstraintResponse,

    -- ** CreateProvisionedProductPlan
    CreateProvisionedProductPlan (CreateProvisionedProductPlan'),
    newCreateProvisionedProductPlan,
    CreateProvisionedProductPlanResponse (CreateProvisionedProductPlanResponse'),
    newCreateProvisionedProductPlanResponse,

    -- ** ExecuteProvisionedProductServiceAction
    ExecuteProvisionedProductServiceAction (ExecuteProvisionedProductServiceAction'),
    newExecuteProvisionedProductServiceAction,
    ExecuteProvisionedProductServiceActionResponse (ExecuteProvisionedProductServiceActionResponse'),
    newExecuteProvisionedProductServiceActionResponse,

    -- ** CreateProduct
    CreateProduct (CreateProduct'),
    newCreateProduct,
    CreateProductResponse (CreateProductResponse'),
    newCreateProductResponse,

    -- ** DescribeCopyProductStatus
    DescribeCopyProductStatus (DescribeCopyProductStatus'),
    newDescribeCopyProductStatus,
    DescribeCopyProductStatusResponse (DescribeCopyProductStatusResponse'),
    newDescribeCopyProductStatusResponse,

    -- ** CreateServiceAction
    CreateServiceAction (CreateServiceAction'),
    newCreateServiceAction,
    CreateServiceActionResponse (CreateServiceActionResponse'),
    newCreateServiceActionResponse,

    -- ** TerminateProvisionedProduct
    TerminateProvisionedProduct (TerminateProvisionedProduct'),
    newTerminateProvisionedProduct,
    TerminateProvisionedProductResponse (TerminateProvisionedProductResponse'),
    newTerminateProvisionedProductResponse,

    -- ** UpdateProvisionedProduct
    UpdateProvisionedProduct (UpdateProvisionedProduct'),
    newUpdateProvisionedProduct,
    UpdateProvisionedProductResponse (UpdateProvisionedProductResponse'),
    newUpdateProvisionedProductResponse,

    -- ** DescribeProvisioningArtifact
    DescribeProvisioningArtifact (DescribeProvisioningArtifact'),
    newDescribeProvisioningArtifact,
    DescribeProvisioningArtifactResponse (DescribeProvisioningArtifactResponse'),
    newDescribeProvisioningArtifactResponse,

    -- ** AssociateServiceActionWithProvisioningArtifact
    AssociateServiceActionWithProvisioningArtifact (AssociateServiceActionWithProvisioningArtifact'),
    newAssociateServiceActionWithProvisioningArtifact,
    AssociateServiceActionWithProvisioningArtifactResponse (AssociateServiceActionWithProvisioningArtifactResponse'),
    newAssociateServiceActionWithProvisioningArtifactResponse,

    -- ** ListRecordHistory (Paginated)
    ListRecordHistory (ListRecordHistory'),
    newListRecordHistory,
    ListRecordHistoryResponse (ListRecordHistoryResponse'),
    newListRecordHistoryResponse,

    -- ** DescribeProvisionedProductPlan
    DescribeProvisionedProductPlan (DescribeProvisionedProductPlan'),
    newDescribeProvisionedProductPlan,
    DescribeProvisionedProductPlanResponse (DescribeProvisionedProductPlanResponse'),
    newDescribeProvisionedProductPlanResponse,

    -- ** AssociateTagOptionWithResource
    AssociateTagOptionWithResource (AssociateTagOptionWithResource'),
    newAssociateTagOptionWithResource,
    AssociateTagOptionWithResourceResponse (AssociateTagOptionWithResourceResponse'),
    newAssociateTagOptionWithResourceResponse,

    -- ** CreateTagOption
    CreateTagOption (CreateTagOption'),
    newCreateTagOption,
    CreateTagOptionResponse (CreateTagOptionResponse'),
    newCreateTagOptionResponse,

    -- ** ListBudgetsForResource
    ListBudgetsForResource (ListBudgetsForResource'),
    newListBudgetsForResource,
    ListBudgetsForResourceResponse (ListBudgetsForResourceResponse'),
    newListBudgetsForResourceResponse,

    -- ** DisassociateProductFromPortfolio
    DisassociateProductFromPortfolio (DisassociateProductFromPortfolio'),
    newDisassociateProductFromPortfolio,
    DisassociateProductFromPortfolioResponse (DisassociateProductFromPortfolioResponse'),
    newDisassociateProductFromPortfolioResponse,

    -- ** ListConstraintsForPortfolio (Paginated)
    ListConstraintsForPortfolio (ListConstraintsForPortfolio'),
    newListConstraintsForPortfolio,
    ListConstraintsForPortfolioResponse (ListConstraintsForPortfolioResponse'),
    newListConstraintsForPortfolioResponse,

    -- ** DescribeRecord
    DescribeRecord (DescribeRecord'),
    newDescribeRecord,
    DescribeRecordResponse (DescribeRecordResponse'),
    newDescribeRecordResponse,

    -- ** EnableAWSOrganizationsAccess
    EnableAWSOrganizationsAccess (EnableAWSOrganizationsAccess'),
    newEnableAWSOrganizationsAccess,
    EnableAWSOrganizationsAccessResponse (EnableAWSOrganizationsAccessResponse'),
    newEnableAWSOrganizationsAccessResponse,

    -- ** DescribeConstraint
    DescribeConstraint (DescribeConstraint'),
    newDescribeConstraint,
    DescribeConstraintResponse (DescribeConstraintResponse'),
    newDescribeConstraintResponse,

    -- ** CreateProvisioningArtifact
    CreateProvisioningArtifact (CreateProvisioningArtifact'),
    newCreateProvisioningArtifact,
    CreateProvisioningArtifactResponse (CreateProvisioningArtifactResponse'),
    newCreateProvisioningArtifactResponse,

    -- ** ListPortfolios (Paginated)
    ListPortfolios (ListPortfolios'),
    newListPortfolios,
    ListPortfoliosResponse (ListPortfoliosResponse'),
    newListPortfoliosResponse,

    -- ** DisassociateBudgetFromResource
    DisassociateBudgetFromResource (DisassociateBudgetFromResource'),
    newDisassociateBudgetFromResource,
    DisassociateBudgetFromResourceResponse (DisassociateBudgetFromResourceResponse'),
    newDisassociateBudgetFromResourceResponse,

    -- ** DescribeProductView
    DescribeProductView (DescribeProductView'),
    newDescribeProductView,
    DescribeProductViewResponse (DescribeProductViewResponse'),
    newDescribeProductViewResponse,

    -- ** CreatePortfolioShare
    CreatePortfolioShare (CreatePortfolioShare'),
    newCreatePortfolioShare,
    CreatePortfolioShareResponse (CreatePortfolioShareResponse'),
    newCreatePortfolioShareResponse,

    -- ** ListProvisioningArtifacts
    ListProvisioningArtifacts (ListProvisioningArtifacts'),
    newListProvisioningArtifacts,
    ListProvisioningArtifactsResponse (ListProvisioningArtifactsResponse'),
    newListProvisioningArtifactsResponse,

    -- ** ListServiceActionsForProvisioningArtifact (Paginated)
    ListServiceActionsForProvisioningArtifact (ListServiceActionsForProvisioningArtifact'),
    newListServiceActionsForProvisioningArtifact,
    ListServiceActionsForProvisioningArtifactResponse (ListServiceActionsForProvisioningArtifactResponse'),
    newListServiceActionsForProvisioningArtifactResponse,

    -- ** SearchProducts
    SearchProducts (SearchProducts'),
    newSearchProducts,
    SearchProductsResponse (SearchProductsResponse'),
    newSearchProductsResponse,

    -- ** DescribeServiceActionExecutionParameters
    DescribeServiceActionExecutionParameters (DescribeServiceActionExecutionParameters'),
    newDescribeServiceActionExecutionParameters,
    DescribeServiceActionExecutionParametersResponse (DescribeServiceActionExecutionParametersResponse'),
    newDescribeServiceActionExecutionParametersResponse,

    -- ** SearchProvisionedProducts
    SearchProvisionedProducts (SearchProvisionedProducts'),
    newSearchProvisionedProducts,
    SearchProvisionedProductsResponse (SearchProvisionedProductsResponse'),
    newSearchProvisionedProductsResponse,

    -- ** ListStackInstancesForProvisionedProduct
    ListStackInstancesForProvisionedProduct (ListStackInstancesForProvisionedProduct'),
    newListStackInstancesForProvisionedProduct,
    ListStackInstancesForProvisionedProductResponse (ListStackInstancesForProvisionedProductResponse'),
    newListStackInstancesForProvisionedProductResponse,

    -- ** DescribeServiceAction
    DescribeServiceAction (DescribeServiceAction'),
    newDescribeServiceAction,
    DescribeServiceActionResponse (DescribeServiceActionResponse'),
    newDescribeServiceActionResponse,

    -- ** DescribeProduct
    DescribeProduct (DescribeProduct'),
    newDescribeProduct,
    DescribeProductResponse (DescribeProductResponse'),
    newDescribeProductResponse,

    -- ** DeleteProvisionedProductPlan
    DeleteProvisionedProductPlan (DeleteProvisionedProductPlan'),
    newDeleteProvisionedProductPlan,
    DeleteProvisionedProductPlanResponse (DeleteProvisionedProductPlanResponse'),
    newDeleteProvisionedProductPlanResponse,

    -- ** GetProvisionedProductOutputs
    GetProvisionedProductOutputs (GetProvisionedProductOutputs'),
    newGetProvisionedProductOutputs,
    GetProvisionedProductOutputsResponse (GetProvisionedProductOutputsResponse'),
    newGetProvisionedProductOutputsResponse,

    -- ** CreateConstraint
    CreateConstraint (CreateConstraint'),
    newCreateConstraint,
    CreateConstraintResponse (CreateConstraintResponse'),
    newCreateConstraintResponse,

    -- ** ListProvisionedProductPlans (Paginated)
    ListProvisionedProductPlans (ListProvisionedProductPlans'),
    newListProvisionedProductPlans,
    ListProvisionedProductPlansResponse (ListProvisionedProductPlansResponse'),
    newListProvisionedProductPlansResponse,

    -- ** ListPortfolioAccess
    ListPortfolioAccess (ListPortfolioAccess'),
    newListPortfolioAccess,
    ListPortfolioAccessResponse (ListPortfolioAccessResponse'),
    newListPortfolioAccessResponse,

    -- ** BatchDisassociateServiceActionFromProvisioningArtifact
    BatchDisassociateServiceActionFromProvisioningArtifact (BatchDisassociateServiceActionFromProvisioningArtifact'),
    newBatchDisassociateServiceActionFromProvisioningArtifact,
    BatchDisassociateServiceActionFromProvisioningArtifactResponse (BatchDisassociateServiceActionFromProvisioningArtifactResponse'),
    newBatchDisassociateServiceActionFromProvisioningArtifactResponse,

    -- ** DisassociatePrincipalFromPortfolio
    DisassociatePrincipalFromPortfolio (DisassociatePrincipalFromPortfolio'),
    newDisassociatePrincipalFromPortfolio,
    DisassociatePrincipalFromPortfolioResponse (DisassociatePrincipalFromPortfolioResponse'),
    newDisassociatePrincipalFromPortfolioResponse,

    -- ** DescribeTagOption
    DescribeTagOption (DescribeTagOption'),
    newDescribeTagOption,
    DescribeTagOptionResponse (DescribeTagOptionResponse'),
    newDescribeTagOptionResponse,

    -- ** DisassociateTagOptionFromResource
    DisassociateTagOptionFromResource (DisassociateTagOptionFromResource'),
    newDisassociateTagOptionFromResource,
    DisassociateTagOptionFromResourceResponse (DisassociateTagOptionFromResourceResponse'),
    newDisassociateTagOptionFromResourceResponse,

    -- ** DescribePortfolio
    DescribePortfolio (DescribePortfolio'),
    newDescribePortfolio,
    DescribePortfolioResponse (DescribePortfolioResponse'),
    newDescribePortfolioResponse,

    -- ** AssociateProductWithPortfolio
    AssociateProductWithPortfolio (AssociateProductWithPortfolio'),
    newAssociateProductWithPortfolio,
    AssociateProductWithPortfolioResponse (AssociateProductWithPortfolioResponse'),
    newAssociateProductWithPortfolioResponse,

    -- ** ListAcceptedPortfolioShares (Paginated)
    ListAcceptedPortfolioShares (ListAcceptedPortfolioShares'),
    newListAcceptedPortfolioShares,
    ListAcceptedPortfolioSharesResponse (ListAcceptedPortfolioSharesResponse'),
    newListAcceptedPortfolioSharesResponse,

    -- ** ExecuteProvisionedProductPlan
    ExecuteProvisionedProductPlan (ExecuteProvisionedProductPlan'),
    newExecuteProvisionedProductPlan,
    ExecuteProvisionedProductPlanResponse (ExecuteProvisionedProductPlanResponse'),
    newExecuteProvisionedProductPlanResponse,

    -- ** AcceptPortfolioShare
    AcceptPortfolioShare (AcceptPortfolioShare'),
    newAcceptPortfolioShare,
    AcceptPortfolioShareResponse (AcceptPortfolioShareResponse'),
    newAcceptPortfolioShareResponse,

    -- ** ScanProvisionedProducts (Paginated)
    ScanProvisionedProducts (ScanProvisionedProducts'),
    newScanProvisionedProducts,
    ScanProvisionedProductsResponse (ScanProvisionedProductsResponse'),
    newScanProvisionedProductsResponse,

    -- ** ListOrganizationPortfolioAccess (Paginated)
    ListOrganizationPortfolioAccess (ListOrganizationPortfolioAccess'),
    newListOrganizationPortfolioAccess,
    ListOrganizationPortfolioAccessResponse (ListOrganizationPortfolioAccessResponse'),
    newListOrganizationPortfolioAccessResponse,

    -- ** ListPrincipalsForPortfolio (Paginated)
    ListPrincipalsForPortfolio (ListPrincipalsForPortfolio'),
    newListPrincipalsForPortfolio,
    ListPrincipalsForPortfolioResponse (ListPrincipalsForPortfolioResponse'),
    newListPrincipalsForPortfolioResponse,

    -- ** DeleteProduct
    DeleteProduct (DeleteProduct'),
    newDeleteProduct,
    DeleteProductResponse (DeleteProductResponse'),
    newDeleteProductResponse,

    -- ** UpdateProduct
    UpdateProduct (UpdateProduct'),
    newUpdateProduct,
    UpdateProductResponse (UpdateProductResponse'),
    newUpdateProductResponse,

    -- ** ListServiceActions (Paginated)
    ListServiceActions (ListServiceActions'),
    newListServiceActions,
    ListServiceActionsResponse (ListServiceActionsResponse'),
    newListServiceActionsResponse,

    -- ** ProvisionProduct
    ProvisionProduct (ProvisionProduct'),
    newProvisionProduct,
    ProvisionProductResponse (ProvisionProductResponse'),
    newProvisionProductResponse,

    -- ** DeleteServiceAction
    DeleteServiceAction (DeleteServiceAction'),
    newDeleteServiceAction,
    DeleteServiceActionResponse (DeleteServiceActionResponse'),
    newDeleteServiceActionResponse,

    -- ** UpdateServiceAction
    UpdateServiceAction (UpdateServiceAction'),
    newUpdateServiceAction,
    UpdateServiceActionResponse (UpdateServiceActionResponse'),
    newUpdateServiceActionResponse,

    -- ** DisableAWSOrganizationsAccess
    DisableAWSOrganizationsAccess (DisableAWSOrganizationsAccess'),
    newDisableAWSOrganizationsAccess,
    DisableAWSOrganizationsAccessResponse (DisableAWSOrganizationsAccessResponse'),
    newDisableAWSOrganizationsAccessResponse,

    -- ** RejectPortfolioShare
    RejectPortfolioShare (RejectPortfolioShare'),
    newRejectPortfolioShare,
    RejectPortfolioShareResponse (RejectPortfolioShareResponse'),
    newRejectPortfolioShareResponse,

    -- ** DisassociateServiceActionFromProvisioningArtifact
    DisassociateServiceActionFromProvisioningArtifact (DisassociateServiceActionFromProvisioningArtifact'),
    newDisassociateServiceActionFromProvisioningArtifact,
    DisassociateServiceActionFromProvisioningArtifactResponse (DisassociateServiceActionFromProvisioningArtifactResponse'),
    newDisassociateServiceActionFromProvisioningArtifactResponse,

    -- ** DeleteTagOption
    DeleteTagOption (DeleteTagOption'),
    newDeleteTagOption,
    DeleteTagOptionResponse (DeleteTagOptionResponse'),
    newDeleteTagOptionResponse,

    -- ** UpdateTagOption
    UpdateTagOption (UpdateTagOption'),
    newUpdateTagOption,
    UpdateTagOptionResponse (UpdateTagOptionResponse'),
    newUpdateTagOptionResponse,

    -- ** ListTagOptions (Paginated)
    ListTagOptions (ListTagOptions'),
    newListTagOptions,
    ListTagOptionsResponse (ListTagOptionsResponse'),
    newListTagOptionsResponse,

    -- ** UpdateProvisionedProductProperties
    UpdateProvisionedProductProperties (UpdateProvisionedProductProperties'),
    newUpdateProvisionedProductProperties,
    UpdateProvisionedProductPropertiesResponse (UpdateProvisionedProductPropertiesResponse'),
    newUpdateProvisionedProductPropertiesResponse,

    -- ** SearchProductsAsAdmin (Paginated)
    SearchProductsAsAdmin (SearchProductsAsAdmin'),
    newSearchProductsAsAdmin,
    SearchProductsAsAdminResponse (SearchProductsAsAdminResponse'),
    newSearchProductsAsAdminResponse,

    -- ** DeletePortfolio
    DeletePortfolio (DeletePortfolio'),
    newDeletePortfolio,
    DeletePortfolioResponse (DeletePortfolioResponse'),
    newDeletePortfolioResponse,

    -- ** UpdatePortfolio
    UpdatePortfolio (UpdatePortfolio'),
    newUpdatePortfolio,
    UpdatePortfolioResponse (UpdatePortfolioResponse'),
    newUpdatePortfolioResponse,

    -- ** ListPortfoliosForProduct (Paginated)
    ListPortfoliosForProduct (ListPortfoliosForProduct'),
    newListPortfoliosForProduct,
    ListPortfoliosForProductResponse (ListPortfoliosForProductResponse'),
    newListPortfoliosForProductResponse,

    -- ** GetAWSOrganizationsAccessStatus
    GetAWSOrganizationsAccessStatus (GetAWSOrganizationsAccessStatus'),
    newGetAWSOrganizationsAccessStatus,
    GetAWSOrganizationsAccessStatusResponse (GetAWSOrganizationsAccessStatusResponse'),
    newGetAWSOrganizationsAccessStatusResponse,

    -- ** DescribeProductAsAdmin
    DescribeProductAsAdmin (DescribeProductAsAdmin'),
    newDescribeProductAsAdmin,
    DescribeProductAsAdminResponse (DescribeProductAsAdminResponse'),
    newDescribeProductAsAdminResponse,

    -- ** BatchAssociateServiceActionWithProvisioningArtifact
    BatchAssociateServiceActionWithProvisioningArtifact (BatchAssociateServiceActionWithProvisioningArtifact'),
    newBatchAssociateServiceActionWithProvisioningArtifact,
    BatchAssociateServiceActionWithProvisioningArtifactResponse (BatchAssociateServiceActionWithProvisioningArtifactResponse'),
    newBatchAssociateServiceActionWithProvisioningArtifactResponse,

    -- ** DescribeProvisioningParameters
    DescribeProvisioningParameters (DescribeProvisioningParameters'),
    newDescribeProvisioningParameters,
    DescribeProvisioningParametersResponse (DescribeProvisioningParametersResponse'),
    newDescribeProvisioningParametersResponse,

    -- ** AssociatePrincipalWithPortfolio
    AssociatePrincipalWithPortfolio (AssociatePrincipalWithPortfolio'),
    newAssociatePrincipalWithPortfolio,
    AssociatePrincipalWithPortfolioResponse (AssociatePrincipalWithPortfolioResponse'),
    newAssociatePrincipalWithPortfolioResponse,

    -- ** DescribeProvisionedProduct
    DescribeProvisionedProduct (DescribeProvisionedProduct'),
    newDescribeProvisionedProduct,
    DescribeProvisionedProductResponse (DescribeProvisionedProductResponse'),
    newDescribeProvisionedProductResponse,

    -- ** CopyProduct
    CopyProduct (CopyProduct'),
    newCopyProduct,
    CopyProductResponse (CopyProductResponse'),
    newCopyProductResponse,

    -- ** DescribePortfolioShareStatus
    DescribePortfolioShareStatus (DescribePortfolioShareStatus'),
    newDescribePortfolioShareStatus,
    DescribePortfolioShareStatusResponse (DescribePortfolioShareStatusResponse'),
    newDescribePortfolioShareStatusResponse,

    -- ** UpdateProvisioningArtifact
    UpdateProvisioningArtifact (UpdateProvisioningArtifact'),
    newUpdateProvisioningArtifact,
    UpdateProvisioningArtifactResponse (UpdateProvisioningArtifactResponse'),
    newUpdateProvisioningArtifactResponse,

    -- ** DeletePortfolioShare
    DeletePortfolioShare (DeletePortfolioShare'),
    newDeletePortfolioShare,
    DeletePortfolioShareResponse (DeletePortfolioShareResponse'),
    newDeletePortfolioShareResponse,

    -- ** DeleteProvisioningArtifact
    DeleteProvisioningArtifact (DeleteProvisioningArtifact'),
    newDeleteProvisioningArtifact,
    DeleteProvisioningArtifactResponse (DeleteProvisioningArtifactResponse'),
    newDeleteProvisioningArtifactResponse,

    -- ** UpdatePortfolioShare
    UpdatePortfolioShare (UpdatePortfolioShare'),
    newUpdatePortfolioShare,
    UpdatePortfolioShareResponse (UpdatePortfolioShareResponse'),
    newUpdatePortfolioShareResponse,

    -- ** ListProvisioningArtifactsForServiceAction (Paginated)
    ListProvisioningArtifactsForServiceAction (ListProvisioningArtifactsForServiceAction'),
    newListProvisioningArtifactsForServiceAction,
    ListProvisioningArtifactsForServiceActionResponse (ListProvisioningArtifactsForServiceActionResponse'),
    newListProvisioningArtifactsForServiceActionResponse,

    -- ** CreatePortfolio
    CreatePortfolio (CreatePortfolio'),
    newCreatePortfolio,
    CreatePortfolioResponse (CreatePortfolioResponse'),
    newCreatePortfolioResponse,

    -- ** ListLaunchPaths (Paginated)
    ListLaunchPaths (ListLaunchPaths'),
    newListLaunchPaths,
    ListLaunchPathsResponse (ListLaunchPathsResponse'),
    newListLaunchPathsResponse,

    -- ** DescribePortfolioShares
    DescribePortfolioShares (DescribePortfolioShares'),
    newDescribePortfolioShares,
    DescribePortfolioSharesResponse (DescribePortfolioSharesResponse'),
    newDescribePortfolioSharesResponse,

    -- ** ListResourcesForTagOption (Paginated)
    ListResourcesForTagOption (ListResourcesForTagOption'),
    newListResourcesForTagOption,
    ListResourcesForTagOptionResponse (ListResourcesForTagOptionResponse'),
    newListResourcesForTagOptionResponse,

    -- ** AssociateBudgetWithResource
    AssociateBudgetWithResource (AssociateBudgetWithResource'),
    newAssociateBudgetWithResource,
    AssociateBudgetWithResourceResponse (AssociateBudgetWithResourceResponse'),
    newAssociateBudgetWithResourceResponse,

    -- * Types

    -- ** AccessLevelFilterKey
    AccessLevelFilterKey (..),

    -- ** AccessStatus
    AccessStatus (..),

    -- ** ChangeAction
    ChangeAction (..),

    -- ** CopyOption
    CopyOption (..),

    -- ** CopyProductStatus
    CopyProductStatus (..),

    -- ** DescribePortfolioShareType
    DescribePortfolioShareType (..),

    -- ** EvaluationType
    EvaluationType (..),

    -- ** OrganizationNodeType
    OrganizationNodeType (..),

    -- ** PortfolioShareType
    PortfolioShareType (..),

    -- ** PrincipalType
    PrincipalType (..),

    -- ** ProductSource
    ProductSource (..),

    -- ** ProductType
    ProductType (..),

    -- ** ProductViewFilterBy
    ProductViewFilterBy (..),

    -- ** ProductViewSortBy
    ProductViewSortBy (..),

    -- ** PropertyKey
    PropertyKey (..),

    -- ** ProvisionedProductPlanStatus
    ProvisionedProductPlanStatus (..),

    -- ** ProvisionedProductPlanType
    ProvisionedProductPlanType (..),

    -- ** ProvisionedProductStatus
    ProvisionedProductStatus (..),

    -- ** ProvisionedProductViewFilterBy
    ProvisionedProductViewFilterBy (..),

    -- ** ProvisioningArtifactGuidance
    ProvisioningArtifactGuidance (..),

    -- ** ProvisioningArtifactPropertyName
    ProvisioningArtifactPropertyName (..),

    -- ** ProvisioningArtifactType
    ProvisioningArtifactType (..),

    -- ** RecordStatus
    RecordStatus (..),

    -- ** Replacement
    Replacement (..),

    -- ** RequestStatus
    RequestStatus (..),

    -- ** RequiresRecreation
    RequiresRecreation (..),

    -- ** ResourceAttribute
    ResourceAttribute (..),

    -- ** ServiceActionAssociationErrorCode
    ServiceActionAssociationErrorCode (..),

    -- ** ServiceActionDefinitionKey
    ServiceActionDefinitionKey (..),

    -- ** ServiceActionDefinitionType
    ServiceActionDefinitionType (..),

    -- ** ShareStatus
    ShareStatus (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** StackInstanceStatus
    StackInstanceStatus (..),

    -- ** StackSetOperationType
    StackSetOperationType (..),

    -- ** AccessLevelFilter
    AccessLevelFilter (AccessLevelFilter'),
    newAccessLevelFilter,

    -- ** BudgetDetail
    BudgetDetail (BudgetDetail'),
    newBudgetDetail,

    -- ** CloudWatchDashboard
    CloudWatchDashboard (CloudWatchDashboard'),
    newCloudWatchDashboard,

    -- ** ConstraintDetail
    ConstraintDetail (ConstraintDetail'),
    newConstraintDetail,

    -- ** ConstraintSummary
    ConstraintSummary (ConstraintSummary'),
    newConstraintSummary,

    -- ** ExecutionParameter
    ExecutionParameter (ExecutionParameter'),
    newExecutionParameter,

    -- ** FailedServiceActionAssociation
    FailedServiceActionAssociation (FailedServiceActionAssociation'),
    newFailedServiceActionAssociation,

    -- ** LaunchPath
    LaunchPath (LaunchPath'),
    newLaunchPath,

    -- ** LaunchPathSummary
    LaunchPathSummary (LaunchPathSummary'),
    newLaunchPathSummary,

    -- ** ListRecordHistorySearchFilter
    ListRecordHistorySearchFilter (ListRecordHistorySearchFilter'),
    newListRecordHistorySearchFilter,

    -- ** ListTagOptionsFilters
    ListTagOptionsFilters (ListTagOptionsFilters'),
    newListTagOptionsFilters,

    -- ** OrganizationNode
    OrganizationNode (OrganizationNode'),
    newOrganizationNode,

    -- ** ParameterConstraints
    ParameterConstraints (ParameterConstraints'),
    newParameterConstraints,

    -- ** PortfolioDetail
    PortfolioDetail (PortfolioDetail'),
    newPortfolioDetail,

    -- ** PortfolioShareDetail
    PortfolioShareDetail (PortfolioShareDetail'),
    newPortfolioShareDetail,

    -- ** Principal
    Principal (Principal'),
    newPrincipal,

    -- ** ProductViewAggregationValue
    ProductViewAggregationValue (ProductViewAggregationValue'),
    newProductViewAggregationValue,

    -- ** ProductViewDetail
    ProductViewDetail (ProductViewDetail'),
    newProductViewDetail,

    -- ** ProductViewSummary
    ProductViewSummary (ProductViewSummary'),
    newProductViewSummary,

    -- ** ProvisionedProductAttribute
    ProvisionedProductAttribute (ProvisionedProductAttribute'),
    newProvisionedProductAttribute,

    -- ** ProvisionedProductDetail
    ProvisionedProductDetail (ProvisionedProductDetail'),
    newProvisionedProductDetail,

    -- ** ProvisionedProductPlanDetails
    ProvisionedProductPlanDetails (ProvisionedProductPlanDetails'),
    newProvisionedProductPlanDetails,

    -- ** ProvisionedProductPlanSummary
    ProvisionedProductPlanSummary (ProvisionedProductPlanSummary'),
    newProvisionedProductPlanSummary,

    -- ** ProvisioningArtifact
    ProvisioningArtifact (ProvisioningArtifact'),
    newProvisioningArtifact,

    -- ** ProvisioningArtifactDetail
    ProvisioningArtifactDetail (ProvisioningArtifactDetail'),
    newProvisioningArtifactDetail,

    -- ** ProvisioningArtifactOutput
    ProvisioningArtifactOutput (ProvisioningArtifactOutput'),
    newProvisioningArtifactOutput,

    -- ** ProvisioningArtifactParameter
    ProvisioningArtifactParameter (ProvisioningArtifactParameter'),
    newProvisioningArtifactParameter,

    -- ** ProvisioningArtifactPreferences
    ProvisioningArtifactPreferences (ProvisioningArtifactPreferences'),
    newProvisioningArtifactPreferences,

    -- ** ProvisioningArtifactProperties
    ProvisioningArtifactProperties (ProvisioningArtifactProperties'),
    newProvisioningArtifactProperties,

    -- ** ProvisioningArtifactSummary
    ProvisioningArtifactSummary (ProvisioningArtifactSummary'),
    newProvisioningArtifactSummary,

    -- ** ProvisioningArtifactView
    ProvisioningArtifactView (ProvisioningArtifactView'),
    newProvisioningArtifactView,

    -- ** ProvisioningParameter
    ProvisioningParameter (ProvisioningParameter'),
    newProvisioningParameter,

    -- ** ProvisioningPreferences
    ProvisioningPreferences (ProvisioningPreferences'),
    newProvisioningPreferences,

    -- ** RecordDetail
    RecordDetail (RecordDetail'),
    newRecordDetail,

    -- ** RecordError
    RecordError (RecordError'),
    newRecordError,

    -- ** RecordOutput
    RecordOutput (RecordOutput'),
    newRecordOutput,

    -- ** RecordTag
    RecordTag (RecordTag'),
    newRecordTag,

    -- ** ResourceChange
    ResourceChange (ResourceChange'),
    newResourceChange,

    -- ** ResourceChangeDetail
    ResourceChangeDetail (ResourceChangeDetail'),
    newResourceChangeDetail,

    -- ** ResourceDetail
    ResourceDetail (ResourceDetail'),
    newResourceDetail,

    -- ** ResourceTargetDefinition
    ResourceTargetDefinition (ResourceTargetDefinition'),
    newResourceTargetDefinition,

    -- ** ServiceActionAssociation
    ServiceActionAssociation (ServiceActionAssociation'),
    newServiceActionAssociation,

    -- ** ServiceActionDetail
    ServiceActionDetail (ServiceActionDetail'),
    newServiceActionDetail,

    -- ** ServiceActionSummary
    ServiceActionSummary (ServiceActionSummary'),
    newServiceActionSummary,

    -- ** ShareDetails
    ShareDetails (ShareDetails'),
    newShareDetails,

    -- ** ShareError
    ShareError (ShareError'),
    newShareError,

    -- ** StackInstance
    StackInstance (StackInstance'),
    newStackInstance,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** TagOptionDetail
    TagOptionDetail (TagOptionDetail'),
    newTagOptionDetail,

    -- ** TagOptionSummary
    TagOptionSummary (TagOptionSummary'),
    newTagOptionSummary,

    -- ** UpdateProvisioningParameter
    UpdateProvisioningParameter (UpdateProvisioningParameter'),
    newUpdateProvisioningParameter,

    -- ** UpdateProvisioningPreferences
    UpdateProvisioningPreferences (UpdateProvisioningPreferences'),
    newUpdateProvisioningPreferences,

    -- ** UsageInstruction
    UsageInstruction (UsageInstruction'),
    newUsageInstruction,
  )
where

import Network.AWS.ServiceCatalog.AcceptPortfolioShare
import Network.AWS.ServiceCatalog.AssociateBudgetWithResource
import Network.AWS.ServiceCatalog.AssociatePrincipalWithPortfolio
import Network.AWS.ServiceCatalog.AssociateProductWithPortfolio
import Network.AWS.ServiceCatalog.AssociateServiceActionWithProvisioningArtifact
import Network.AWS.ServiceCatalog.AssociateTagOptionWithResource
import Network.AWS.ServiceCatalog.BatchAssociateServiceActionWithProvisioningArtifact
import Network.AWS.ServiceCatalog.BatchDisassociateServiceActionFromProvisioningArtifact
import Network.AWS.ServiceCatalog.CopyProduct
import Network.AWS.ServiceCatalog.CreateConstraint
import Network.AWS.ServiceCatalog.CreatePortfolio
import Network.AWS.ServiceCatalog.CreatePortfolioShare
import Network.AWS.ServiceCatalog.CreateProduct
import Network.AWS.ServiceCatalog.CreateProvisionedProductPlan
import Network.AWS.ServiceCatalog.CreateProvisioningArtifact
import Network.AWS.ServiceCatalog.CreateServiceAction
import Network.AWS.ServiceCatalog.CreateTagOption
import Network.AWS.ServiceCatalog.DeleteConstraint
import Network.AWS.ServiceCatalog.DeletePortfolio
import Network.AWS.ServiceCatalog.DeletePortfolioShare
import Network.AWS.ServiceCatalog.DeleteProduct
import Network.AWS.ServiceCatalog.DeleteProvisionedProductPlan
import Network.AWS.ServiceCatalog.DeleteProvisioningArtifact
import Network.AWS.ServiceCatalog.DeleteServiceAction
import Network.AWS.ServiceCatalog.DeleteTagOption
import Network.AWS.ServiceCatalog.DescribeConstraint
import Network.AWS.ServiceCatalog.DescribeCopyProductStatus
import Network.AWS.ServiceCatalog.DescribePortfolio
import Network.AWS.ServiceCatalog.DescribePortfolioShareStatus
import Network.AWS.ServiceCatalog.DescribePortfolioShares
import Network.AWS.ServiceCatalog.DescribeProduct
import Network.AWS.ServiceCatalog.DescribeProductAsAdmin
import Network.AWS.ServiceCatalog.DescribeProductView
import Network.AWS.ServiceCatalog.DescribeProvisionedProduct
import Network.AWS.ServiceCatalog.DescribeProvisionedProductPlan
import Network.AWS.ServiceCatalog.DescribeProvisioningArtifact
import Network.AWS.ServiceCatalog.DescribeProvisioningParameters
import Network.AWS.ServiceCatalog.DescribeRecord
import Network.AWS.ServiceCatalog.DescribeServiceAction
import Network.AWS.ServiceCatalog.DescribeServiceActionExecutionParameters
import Network.AWS.ServiceCatalog.DescribeTagOption
import Network.AWS.ServiceCatalog.DisableAWSOrganizationsAccess
import Network.AWS.ServiceCatalog.DisassociateBudgetFromResource
import Network.AWS.ServiceCatalog.DisassociatePrincipalFromPortfolio
import Network.AWS.ServiceCatalog.DisassociateProductFromPortfolio
import Network.AWS.ServiceCatalog.DisassociateServiceActionFromProvisioningArtifact
import Network.AWS.ServiceCatalog.DisassociateTagOptionFromResource
import Network.AWS.ServiceCatalog.EnableAWSOrganizationsAccess
import Network.AWS.ServiceCatalog.ExecuteProvisionedProductPlan
import Network.AWS.ServiceCatalog.ExecuteProvisionedProductServiceAction
import Network.AWS.ServiceCatalog.GetAWSOrganizationsAccessStatus
import Network.AWS.ServiceCatalog.GetProvisionedProductOutputs
import Network.AWS.ServiceCatalog.ImportAsProvisionedProduct
import Network.AWS.ServiceCatalog.Lens
import Network.AWS.ServiceCatalog.ListAcceptedPortfolioShares
import Network.AWS.ServiceCatalog.ListBudgetsForResource
import Network.AWS.ServiceCatalog.ListConstraintsForPortfolio
import Network.AWS.ServiceCatalog.ListLaunchPaths
import Network.AWS.ServiceCatalog.ListOrganizationPortfolioAccess
import Network.AWS.ServiceCatalog.ListPortfolioAccess
import Network.AWS.ServiceCatalog.ListPortfolios
import Network.AWS.ServiceCatalog.ListPortfoliosForProduct
import Network.AWS.ServiceCatalog.ListPrincipalsForPortfolio
import Network.AWS.ServiceCatalog.ListProvisionedProductPlans
import Network.AWS.ServiceCatalog.ListProvisioningArtifacts
import Network.AWS.ServiceCatalog.ListProvisioningArtifactsForServiceAction
import Network.AWS.ServiceCatalog.ListRecordHistory
import Network.AWS.ServiceCatalog.ListResourcesForTagOption
import Network.AWS.ServiceCatalog.ListServiceActions
import Network.AWS.ServiceCatalog.ListServiceActionsForProvisioningArtifact
import Network.AWS.ServiceCatalog.ListStackInstancesForProvisionedProduct
import Network.AWS.ServiceCatalog.ListTagOptions
import Network.AWS.ServiceCatalog.ProvisionProduct
import Network.AWS.ServiceCatalog.RejectPortfolioShare
import Network.AWS.ServiceCatalog.ScanProvisionedProducts
import Network.AWS.ServiceCatalog.SearchProducts
import Network.AWS.ServiceCatalog.SearchProductsAsAdmin
import Network.AWS.ServiceCatalog.SearchProvisionedProducts
import Network.AWS.ServiceCatalog.TerminateProvisionedProduct
import Network.AWS.ServiceCatalog.Types
import Network.AWS.ServiceCatalog.UpdateConstraint
import Network.AWS.ServiceCatalog.UpdatePortfolio
import Network.AWS.ServiceCatalog.UpdatePortfolioShare
import Network.AWS.ServiceCatalog.UpdateProduct
import Network.AWS.ServiceCatalog.UpdateProvisionedProduct
import Network.AWS.ServiceCatalog.UpdateProvisionedProductProperties
import Network.AWS.ServiceCatalog.UpdateProvisioningArtifact
import Network.AWS.ServiceCatalog.UpdateServiceAction
import Network.AWS.ServiceCatalog.UpdateTagOption
import Network.AWS.ServiceCatalog.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ServiceCatalog'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
