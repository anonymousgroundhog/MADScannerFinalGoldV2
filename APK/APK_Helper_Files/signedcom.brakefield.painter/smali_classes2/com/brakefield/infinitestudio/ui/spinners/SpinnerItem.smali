.class public abstract Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;
.super Ljava/lang/Object;
.source "SpinnerItem.java"


# instance fields
.field public final returnObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;->returnObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract getLayoutId()I
.end method

.method public isSelectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract updateView(Landroid/view/View;)V
.end method
