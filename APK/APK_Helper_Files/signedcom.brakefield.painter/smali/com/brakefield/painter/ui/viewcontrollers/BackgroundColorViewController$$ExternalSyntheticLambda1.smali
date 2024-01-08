.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, v1, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;->lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-BackgroundColorViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
