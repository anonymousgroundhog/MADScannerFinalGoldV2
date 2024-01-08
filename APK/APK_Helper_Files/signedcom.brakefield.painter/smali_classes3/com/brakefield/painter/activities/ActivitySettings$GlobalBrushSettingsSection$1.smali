.class Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$1;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$GlobalBrushSettingsSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModifierName()I
    .locals 1

    const v0, 0x7f1209fd

    return v0
.end method

.method public getProfileCurve()J
    .locals 2

    .line 767
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getGlobalPressureProfile()J

    move-result-wide v0

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 759
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getGlobalPressure()Z

    move-result v0

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 763
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setGlobalPressure(Z)V

    return-void
.end method
