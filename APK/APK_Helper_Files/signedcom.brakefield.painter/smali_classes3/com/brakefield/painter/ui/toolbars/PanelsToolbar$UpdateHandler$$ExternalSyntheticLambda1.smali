.class public final synthetic Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$UpdateHandler;->lambda$new$1(Lcom/brakefield/painter/databinding/PanelsToolbarBinding;Ljava/lang/Integer;)V

    return-void
.end method
