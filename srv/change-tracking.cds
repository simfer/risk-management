using {riskmanagement as rm} from '../db/schema';

annotate rm.Risks {
    title @changelog;
    descr @changelog;
}

using from '@cap-js/change-tracking';

annotate sap.changelog.aspect @(UI.Facets: [{
  $Type : 'UI.ReferenceFacet',
  ID    : 'ChangeHistoryFacet',
  Label : '{i18n>ChangeHistory}',
  Target: 'changes/@UI.PresentationVariant',
  ![@UI.PartOfPreview]
}]);