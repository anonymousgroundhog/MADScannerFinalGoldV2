.class public final synthetic Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;

    iput-object p2, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda2;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    iput p4, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;

    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda2;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    iget v3, p0, Lcom/brakefield/painter/brushes/settings/BrushSettings$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/brakefield/painter/brushes/settings/BrushSettings;->lambda$setupProfileCurve$1(Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;ILandroid/view/View;)V

    return-void
.end method
