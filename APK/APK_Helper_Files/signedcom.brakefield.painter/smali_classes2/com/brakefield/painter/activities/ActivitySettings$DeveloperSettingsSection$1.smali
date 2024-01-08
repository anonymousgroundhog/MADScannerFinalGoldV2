.class Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$1;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;

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

    const/4 p1, 0x0

    if-eqz p3, :cond_3

    const/4 p2, 0x1

    if-eq p3, p2, :cond_2

    const/4 p4, 0x2

    if-eq p3, p4, :cond_1

    const/4 p4, 0x3

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    new-array p2, p2, [Lcom/brakefield/painter/billing/PainterVersion;

    .line 206
    sget-object p3, Lcom/brakefield/painter/billing/PainterVersion;->EDUCATION:Lcom/brakefield/painter/billing/PainterVersion;

    aput-object p3, p2, p1

    invoke-static {p2}, Lcom/brakefield/painter/PurchaseManager;->testVersionScopes([Lcom/brakefield/painter/billing/PainterVersion;)V

    goto :goto_0

    :cond_1
    new-array p2, p2, [Lcom/brakefield/painter/billing/PainterVersion;

    .line 205
    sget-object p3, Lcom/brakefield/painter/billing/PainterVersion;->TRIAL:Lcom/brakefield/painter/billing/PainterVersion;

    aput-object p3, p2, p1

    invoke-static {p2}, Lcom/brakefield/painter/PurchaseManager;->testVersionScopes([Lcom/brakefield/painter/billing/PainterVersion;)V

    goto :goto_0

    :cond_2
    new-array p2, p2, [Lcom/brakefield/painter/billing/PainterVersion;

    .line 204
    sget-object p3, Lcom/brakefield/painter/billing/PainterVersion;->FREE:Lcom/brakefield/painter/billing/PainterVersion;

    aput-object p3, p2, p1

    invoke-static {p2}, Lcom/brakefield/painter/PurchaseManager;->testVersionScopes([Lcom/brakefield/painter/billing/PainterVersion;)V

    goto :goto_0

    :cond_3
    new-array p1, p1, [Lcom/brakefield/painter/billing/PainterVersion;

    .line 203
    invoke-static {p1}, Lcom/brakefield/painter/PurchaseManager;->testVersionScopes([Lcom/brakefield/painter/billing/PainterVersion;)V

    :goto_0
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
