<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Search by tag">
                <button type="submit" class="btn btn-primary mb-3 mt-2">Search</button>
            </form>
        </div>
    </div>

<#--    Toggle-->

    <#include "parts/messageEdit.ftlh"/>

    <#include "parts/messageList.ftlh"/>

</@c.page>