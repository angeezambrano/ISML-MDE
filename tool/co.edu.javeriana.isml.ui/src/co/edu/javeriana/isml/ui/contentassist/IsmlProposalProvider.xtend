/*
 * generated by Xtext
 */
package co.edu.javeriana.isml.ui.contentassist

import co.edu.javeriana.isml.isml.Resource
import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.Assignment
import org.eclipse.xtext.CrossReference
import org.eclipse.xtext.ui.editor.contentassist.ContentAssistContext
import org.eclipse.xtext.ui.editor.contentassist.ICompletionProposalAcceptor

/**
 * see http://www.eclipse.org/Xtext/documentation.html#contentAssist on how to customize content assistant
 */
class IsmlProposalProvider extends AbstractIsmlProposalProvider {
	
	override completeResourceAssignment_Left(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		lookupCrossReference(assignment.terminal as CrossReference, context, acceptor, [ _ | _.EObjectOrProxy instanceof Resource] )
	} 
	
	
}
