<p>
    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Message Editor
    </a>
</p>
<div class="collapse <#if message??>show</#if>" id="collapseExample">
    <div class="card card-body">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group mb-2">
                <input type="text" class="form-control py-4 px=15  ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.text}</#if>" name="text" placeholder="Введите сообщение" />
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <div class="form-group mb-2">
                <input type="text" class="form-control px=15 ${(tagError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.tag}</#if>" name="tag" placeholder="Тэг">
                <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
            </div>
            <div class="form-group mb-2">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="hidden" name="id" value="<#if message??>${message.id}</#if>" />

            <div class="form-group mb-2">
                <button type="submit" class="btn btn-primary">Save Message</button>
            </div>
        </form>
    </div>
</div>