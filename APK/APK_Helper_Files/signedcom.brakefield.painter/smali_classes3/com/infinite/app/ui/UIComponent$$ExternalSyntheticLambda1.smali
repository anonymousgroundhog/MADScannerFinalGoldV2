.class public final synthetic Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/infinite/app/ui/UIComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/infinite/app/ui/UIComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda1;->f$0:Lcom/infinite/app/ui/UIComponent;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/infinite/app/ui/UIComponent$$ExternalSyntheticLambda1;->f$0:Lcom/infinite/app/ui/UIComponent;

    invoke-virtual {v0, p1}, Lcom/infinite/app/ui/UIComponent;->lambda$bindLongpressListener$1$com-infinite-app-ui-UIComponent(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
