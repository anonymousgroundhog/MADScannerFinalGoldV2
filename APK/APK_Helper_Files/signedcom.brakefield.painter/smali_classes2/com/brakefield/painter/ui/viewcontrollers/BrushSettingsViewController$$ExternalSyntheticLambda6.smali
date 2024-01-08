.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda6;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController$$ExternalSyntheticLambda6;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSettingsViewController;->lambda$getView$1(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/String;)V

    return-void
.end method
