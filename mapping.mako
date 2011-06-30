# -*- coding: utf-8 -*-
<%
rndr = field.renderer
tmpl = field.widget.item_template
%>
<fieldset class="deformMappingFieldset">
  <!-- mapping -->
  % if field.title:
  <legend>${field.title}</legend>
  % endif
  <ul>
    % if field.errormsg:
    <li class="errorLi">
      <h3 class="errorMsgLbl">There was a problem with this section</h3>
      <p class="errorMsg">${field.errormsg}</p>
    </li>
    % endif
    % if field.description:
    <li class="section">
      <div>${field.description}</div>
    </li>
    % endif
    <input type="hidden" name="__start__" value="${field.name}:mapping"/>
    % for f in field.children:
    ${rndr(tmpl, field=f, cstruct=cstruct.get(f.name, null))}
    % endfor
    <input type="hidden" name="__end__" value="${field.name}:mapping"/>
  </ul>
  <!-- /mapping -->
</fieldset>
