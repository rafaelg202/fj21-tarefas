<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
<body>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}" />
		
		Descrição:<br />
		<textarea name="descricao" cols="100" rows="5">
			${tarefa.descricao}
		</textarea>
		<br />
		
		Finalização? <input type="checkbox" name="finalizado"
			value="true" ${tarefa.finalizado? 'checked' : '' }/> <br />
			
		Data de finalização: <br />
		<input type="text" name="dataFinalizacao"
			value="<fmt:formatDate
				value="${tarefa.dataFinalizacao.time}"
				pattern="dd/MM/yyyy" />"/>
		<br />
		
		<input type="submit" value="Alterar"/>
	</form>
</body>
</html>