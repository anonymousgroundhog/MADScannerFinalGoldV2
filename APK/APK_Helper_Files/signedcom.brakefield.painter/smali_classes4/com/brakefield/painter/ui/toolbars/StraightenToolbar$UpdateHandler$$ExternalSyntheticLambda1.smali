.class public final synthetic Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/databinding/StraightenToolbarBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/databinding/StraightenToolbarBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/databinding/StraightenToolbarBinding;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/databinding/StraightenToolbarBinding;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/toolbars/StraightenToolbar$UpdateHandler;->lambda$new$1(Lcom/brakefield/painter/databinding/StraightenToolbarBinding;Ljava/lang/Boolean;)V

    return-void
.end method
