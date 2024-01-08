.class Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection$2;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection$2;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;

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

    .line 705
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection$2;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivitySettings$StylusSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1900(Lcom/brakefield/painter/activities/ActivitySettings;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x0

    sget-object p2, Landroidx/core/view/contentcapture/cO/WfeUtUoIBm;->ckNiJOnpkz:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

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
