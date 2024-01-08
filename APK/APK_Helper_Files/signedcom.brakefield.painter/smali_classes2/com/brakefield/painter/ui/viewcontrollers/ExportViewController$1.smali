.class Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;
.super Ljava/lang/Object;
.source "ExportViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->show(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field previousPosition:I

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

.field final synthetic val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

.field final synthetic val$startColor:I


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;Lcom/brakefield/painter/databinding/ExportViewControllerBinding;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    iput p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->val$startColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->previousPosition:I

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 68
    iget p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->previousPosition:I

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 72
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 73
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "Untitled"

    invoke-virtual {p4, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 74
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    iget-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

    invoke-virtual {p5, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->getSuffix(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->getNewImageName(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_1
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

    invoke-static {p4}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;)Lcom/brakefield/painter/Exporter;

    move-result-object p4

    iput p2, p4, Lcom/brakefield/painter/Exporter;->type:I

    .line 78
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

    iget-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    invoke-virtual {p4, p5, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->updateSettings(Lcom/brakefield/painter/databinding/ExportViewControllerBinding;I)V

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->getSuffix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->isValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 81
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    const/high16 p2, -0x10000

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    iget p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->val$startColor:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 86
    :goto_0
    iput p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$1;->previousPosition:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
