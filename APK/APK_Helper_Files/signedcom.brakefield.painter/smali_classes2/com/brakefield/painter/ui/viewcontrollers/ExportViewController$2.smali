.class Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$2;
.super Ljava/lang/Object;
.source "ExportViewController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->show(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 106
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$2;->val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    iput p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$2;->val$startColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$2;->val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    iget-object p3, p3, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->formatDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->getSelectedItemPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->getSuffix(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->isValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$2;->val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    const/high16 p2, -0x10000

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$2;->val$binding:Lcom/brakefield/painter/databinding/ExportViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ExportViewControllerBinding;->editName:Landroid/widget/EditText;

    iget p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController$2;->val$startColor:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_0
    return-void
.end method
