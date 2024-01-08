.class public final synthetic Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/databinding/FilterToolbarBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/databinding/FilterToolbarBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/databinding/FilterToolbarBinding;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/databinding/FilterToolbarBinding;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/toolbars/FilterToolbar$UpdateHandler;->lambda$new$2(Lcom/brakefield/painter/databinding/FilterToolbarBinding;Ljava/lang/Float;)V

    return-void
.end method
