.class Lcom/brakefield/painter/brushes/settings/HeadSettings$5;
.super Ljava/lang/Object;
.source "HeadSettings.java"

# interfaces
.implements Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/brushes/settings/HeadSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings$5;->this$0:Lcom/brakefield/painter/brushes/settings/HeadSettings;

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

    .line 523
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPressureScatterProfile()J

    move-result-wide v0

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 517
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushPressureEffectsScatter()Z

    move-result v0

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 520
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushPressureEffectsScatter(Z)V

    return-void
.end method
