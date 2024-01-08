.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
