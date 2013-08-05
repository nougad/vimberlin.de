{include file="CoreAdminHome/templates/header.tpl"}
<link rel="stylesheet" href="plugins/CoreAdminHome/templates/jsTrackingGenerator.css" />
<script type="text/javascript" src="plugins/CoreAdminHome/templates/jsTrackingGenerator.js"></script>

<div id="js-tracking-generator-data"
     data-currencies="{$currencySymbols|@json_encode|escape:'html'}"/>

<h2>{'CoreAdminHome_JavaScriptTracking'|translate}</h2>

<div id="js-code-options" class="adminTable">

    <p>
        {'CoreAdminHome_JSTrackingIntro1'|translate}
        <br/><br/>
        {'CoreAdminHome_JSTrackingIntro2'|translate} {'CoreAdminHome_JSTrackingIntro3'|translate:'<a href="http://piwik.org/integrate/" target="_blank">':'</a>'}
        <br/><br/>
        {'CoreAdminHome_JSTrackingIntro4'|translate:'<a href="#image-tracking">':'</a>'}
        <br/><br/>
        {'CoreAdminHome_JSTrackingIntro5'|translate:'<a target="_blank" href="http://piwik.org/docs/javascript-tracking/">':'</a>'}
    </p>

    <div>
        {* website *}
        <label class="website-label"><strong>{'General_Website'|translate}</strong></label>
        {include file="CoreHome/templates/sites_selection.tpl"
        siteName=$defaultReportSiteName idSite=$idSite showAllSitesItem=false switchSiteOnSelect=false
        siteSelectorId="js-tracker-website" showSelectedSite=true}

        <br/><br/><br/>
    </div>

    <table id="optional-js-tracking-options" class="adminTable" style='width:1024px'>
        <tr>
            <th>{'General_Options'|translate}</th>
            <th>{'Mobile_Advanced'|translate} <a href="#" class="section-toggler-link"
                                                 data-section-id="javascript-advanced-options">({'General_Show_js'|translate})</a></th>
        </tr>
        <tr>
            <td>
                {* track across all subdomains *}
                <div class="tracking-option-section">
                    <input type="checkbox" id="javascript-tracking-all-subdomains"/>
                    <label for="javascript-tracking-all-subdomains">{'CoreAdminHome_JSTracking_MergeSubdomains'|translate} <span
                                class='current-site-name'>{$defaultReportSiteName}</span></label>

                    <div class="small-form-description">
                        {'CoreAdminHome_JSTracking_MergeSubdomainsDesc'|translate:"x.<span class='current-site-host'>$defaultReportSiteDomain</span>":"y.<span class='current-site-host'>$defaultReportSiteDomain</span>"}
                    </div>
                </div>

                {* group page titles by site domain *}
                <div class="tracking-option-section">
                    <input type="checkbox" id="javascript-tracking-group-by-domain"/>
                    <label for="javascript-tracking-group-by-domain">{'CoreAdminHome_JSTracking_GroupPageTitlesByDomain'|translate}</label>

                    <div class="small-form-description">
                        {'CoreAdminHome_JSTracking_GroupPageTitlesByDomainDesc1'|translate:"<span class='current-site-host'>$defaultReportSiteDomain</span>"}
                    </div>
                </div>

                {* track across all site aliases *}
                <div class="tracking-option-section">
                    <input type="checkbox" id="javascript-tracking-all-aliases"/>
                    <label for="javascript-tracking-all-aliases">{'CoreAdminHome_JSTracking_MergeAliases'|translate} <span
                                class='current-site-name'>{$defaultReportSiteName}</span></label>

                    <div class="small-form-description">
                        {'CoreAdminHome_JSTracking_MergeAliasesDesc'|translate:"<span class='current-site-alias'>$defaultReportSiteAlias</span>"}
                    </div>
                </div>

            </td>
            <td>
                <div id="javascript-advanced-options" style="display:none">
                    {* visitor custom variable *}
                    <div class="custom-variable tracking-option-section" id="javascript-tracking-visitor-cv">
                        <input class="section-toggler-link" type="checkbox" id="javascript-tracking-visitor-cv-check" data-section-id="js-visitor-cv-extra"/>
                        <label for="javascript-tracking-visitor-cv-check">{'CoreAdminHome_JSTracking_VisitorCustomVars'|translate}</label>

                        <div class="small-form-description">
                            {'CoreAdminHome_JSTracking_VisitorCustomVarsDesc'|translate}
                        </div>

                        <table style="display:none" id="js-visitor-cv-extra">
                            <tr>
                                <td><strong>{'General_Name'|translate}</strong></td>
                                <td><input type="textbox" class="custom-variable-name" placeholder="e.g. Type"/></td>
                                <td><strong>{'General_Value'|translate}</strong></td>
                                <td><input type="textbox" class="custom-variable-value" placeholder="e.g. Customer"/></td>
                            </tr>
                            <tr>
                                <td colspan="4" style="text-align:right">
                                    <a href="#" class="add-custom-variable">{'General_Add'|translate}</a>
                                </td>
                            </tr>
                        </table>
                    </div>

                    {* page view custom variable *}
                    <div class="custom-variable tracking-option-section" id="javascript-tracking-page-cv">
                        <input class="section-toggler-link" type="checkbox" id="javascript-tracking-page-cv-check" data-section-id="js-page-cv-extra"/>
                        <label for="javascript-tracking-page-cv-check">{'CoreAdminHome_JSTracking_PageCustomVars'|translate}</label>

                        <div class="small-form-description">
                            {'CoreAdminHome_JSTracking_PageCustomVarsDesc'|translate}
                        </div>

                        <table style="display:none" id="js-page-cv-extra">
                            <tr>
                                <td><strong>{'General_Name'|translate}</strong></td>
                                <td><input type="textbox" class="custom-variable-name" placeholder="e.g. Category"/></td>
                                <td><strong>{'General_Value'|translate}</strong></td>
                                <td><input type="textbox" class="custom-variable-value" placeholder="e.g. White Papers"/></td>
                            </tr>
                            <tr>
                                <td colspan="4" style="text-align:right">
                                    <a href="#" class="add-custom-variable">{'General_Add'|translate}</a>
                                </td>
                            </tr>
                        </table>
                    </div>

                    {* do not track support *}
                    <div class="tracking-option-section">
                        <input type="checkbox" id="javascript-tracking-do-not-track"/>
                        <label for="javascript-tracking-do-not-track">{'CoreAdminHome_JSTracking_EnableDoNotTrack'|translate}</label>

                        <div class="small-form-description">
                            {'CoreAdminHome_JSTracking_EnableDoNotTrackDesc'|translate}
                            {if $serverSideDoNotTrackEnabled}
                                <br/>
                                <br/>
                                {'CoreAdminHome_JSTracking_EnableDoNotTrack_AlreadyEnabled'|translate}
                            {/if}
                        </div>
                    </div>

                    {* custom campaign name/keyword query params *}
                    <div class="tracking-option-section">
                        <input class="section-toggler-link" type="checkbox" id="custom-campaign-query-params-check"
                               data-section-id="js-campaign-query-param-extra"/>
                        <label for="custom-campaign-query-params-check">{'CoreAdminHome_JSTracking_CustomCampaignQueryParam'|translate}</label>

                        <div class="small-form-description">
                            {'CoreAdminHome_JSTracking_CustomCampaignQueryParamDesc'|translate:'<a href="http://piwik.org/faq/general/#faq_119" target="_blank">':'</a>'}
                        </div>

                        <table style="display:none" id="js-campaign-query-param-extra">
                            <tr>
                                <td><strong>{'CoreAdminHome_JSTracking_CampaignNameParam'|translate}</strong></td>
                                <td><input type="text" id="custom-campaign-name-query-param"/></td>
                            </tr>
                            <tr>
                                <td><strong>{'CoreAdminHome_JSTracking_CampaignKwdParam'|translate}</strong></td>
                                <td><input type="text" id="custom-campaign-keyword-query-param"/></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
        </tr>
    </table>

</div>

<div id="javascript-output-section">
    <h3>{'Installation_JsTag'|translate}</h3>

    <p class="form-description">{'CoreAdminHome_JSTracking_CodeNote'|translate:"&lt;/body&gt;"}</p>

    <div id="javascript-text">
        <textarea> </textarea>
    </div>
    <br/>
</div>

<h2 id="image-tracking">{'CoreAdminHome_ImageTracking'|translate}</h2>

<div id="image-tracking-code-options" class="adminTable">

    <p>
        {'CoreAdminHome_ImageTrackingIntro1'|translate} {'CoreAdminHome_ImageTrackingIntro2'|translate:"<em>&lt;noscript&gt;&lt;/noscript&gt;</em>"}
        <br/><br/>
        {'CoreAdminHome_ImageTrackingIntro3'|translate:'<a href="http://piwik.org/docs/tracking-api/reference/" target="_blank">':'</a>'}
    </p>

    <div>
        {* website *}
        <label class="website-label"><strong>{'General_Website'|translate}</strong></label>
        {include file="CoreHome/templates/sites_selection.tpl"
        siteName=$defaultReportSiteName idSite=$idSite showAllSitesItem=false switchSiteOnSelect=false
        showSelectedSite=true siteSelectorId="image-tracker-website"}

        <br/><br/><br/>
    </div>

    <table id="image-tracking-section" class="adminTable" style='width:1024px;'>
        <tr>
            <th>{'General_Options'|translate}</th>
            <th>{'Mobile_Advanced'|translate} <a href="#" class="section-toggler-link"
                                                 data-section-id="image-tracker-advanced-options">({'General_Show_js'|translate})</a></th>
        </tr>
        <tr>
            <td>
                {* action_name *}
                <div class="tracking-option-section">
                    <label for="image-tracker-action-name">{'Actions_ColumnPageName'|translate}</label>
                    <input type="text" id="image-tracker-action-name"/>
                </div>
            </td>
            <td>
                <div id="image-tracker-advanced-options" style="display:none">
                    {* goal *}
                    <div class="goal-picker tracking-option-section">
                        <input class="section-toggler-link" type="checkbox" id="image-tracking-goal-check" data-section-id="image-goal-picker-extra"/>
                        <label for="image-tracking-goal-check">{'CoreAdminHome_TrackAGoal'|translate}</label>

                        <div style="display:none" id="image-goal-picker-extra">
                            <select id="image-tracker-goal">
                                <option value="">{'UserCountryMap_None'|translate}</option>
                            </select>
                            <span>{'CoreAdminHome_WithOptionalRevenue'|translate}</span>
                            <span class="currency">{$defaultSiteRevenue|escape:'html'}</span>
                            <input type="text" class="revenue" value=""/>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>

    <div id="image-link-output-section" width="560px">
        <h3>{'CoreAdminHome_ImageTrackingLink'|translate}</h3><br/><br/>

        <div id="image-tracking-link">
            <textarea> </textarea>
        </div>
        <br/>
    </div>

</div>

<h2>{'CoreAdminHome_ImportingServerLogs'|translate}</h2>

<p>
    {'CoreAdminHome_ImportingServerLogsDesc'|translate:'<a href="http://piwik.org/log-analytics/" target="_blank">':'</a>'}
</p>

{include file="CoreAdminHome/templates/footer.tpl"}

