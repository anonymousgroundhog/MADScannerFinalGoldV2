.class Lcom/brakefield/painter/brushes/settings/StrokeSettings$5;
.super Ljava/lang/Object;
.source "StrokeSettings.java"

# interfaces
.implements Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/brushes/settings/StrokeSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$5;->this$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModifierName()I
    .locals 1

    const v0, 0x7f120b29

    return v0
.end method

.method public getProfileCurve()J
    .locals 2

    .line 244
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getVelocitySizeProfile()J

    move-result-wide v0

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .line 238
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushVelocityEffectsSize()Z

    move-result v0

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 241
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushVelocityEffectsSize(Z)V

    return-void
.end method
