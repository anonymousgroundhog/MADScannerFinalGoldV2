.class Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Lcom/brakefield/painter/addons/OnDemandAddon$OnInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->setupSection(Lcom/brakefield/painter/addons/Addon;Lcom/brakefield/painter/databinding/CompanionSettingsItemBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$service:Lcom/brakefield/painter/addons/Addon;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;Landroid/app/ProgressDialog;Lcom/brakefield/painter/addons/Addon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 885
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->val$service:Lcom/brakefield/painter/addons/Addon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    if-eqz p1, :cond_0

    .line 903
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->refresh()V

    .line 904
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->val$service:Lcom/brakefield/painter/addons/Addon;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;

    iget-object v0, v0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {v0}, Lcom/brakefield/painter/activities/ActivitySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/addons/Addon;->connect(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public updateProgress(II)V
    .locals 2

    .line 888
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 890
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    if-nez p2, :cond_1

    .line 892
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 895
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 896
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$1;->val$progressDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    :goto_0
    return-void
.end method
