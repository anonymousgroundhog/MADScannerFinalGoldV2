.class Lcom/brakefield/infinitestudio/ui/HorizontalPager$3;
.super Ljava/lang/Object;
.source "HorizontalPager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/HorizontalPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/HorizontalPager;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/HorizontalPager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager$3;->this$0:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager$3;->this$0:Lcom/brakefield/infinitestudio/ui/HorizontalPager;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->access$100(Lcom/brakefield/infinitestudio/ui/HorizontalPager;)V

    return-void
.end method
