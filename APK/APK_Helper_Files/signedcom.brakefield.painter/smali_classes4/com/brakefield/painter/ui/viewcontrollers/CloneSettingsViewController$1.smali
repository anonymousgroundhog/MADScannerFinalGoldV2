.class Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;
.super Ljava/lang/Object;
.source "CloneSettingsViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 41
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setCloneMode(I)V

    .line 43
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->val$activity:Landroid/app/Activity;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 44
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p4, "PREF_CLONE_MODE"

    invoke-interface {p2, p4, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->artisticSettings:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->beginDelayedFadeIn(Landroid/view/ViewGroup;)V

    const/16 p2, 0x8

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->artisticSettings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->smartSettings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->artisticSettings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->smartSettings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->artisticSettings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CloneSettingsViewControllerBinding;->smartSettings:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)V

    .line 63
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;)V

    .line 65
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

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
