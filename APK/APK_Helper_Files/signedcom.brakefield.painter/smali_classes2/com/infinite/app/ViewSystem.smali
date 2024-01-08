.class public Lcom/infinite/app/ViewSystem;
.super Ljava/lang/Object;
.source "ViewSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infinite/app/ViewSystem$View;
    }
.end annotation


# instance fields
.field private final registeredViews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/infinite/app/ViewSystem$View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/infinite/app/ViewSystem;->registeredViews:Landroid/util/ArrayMap;

    return-void
.end method

.method private static native deleteView(J)V
.end method

.method private static native getViewAnchor(J)[I
.end method

.method private static native getViewCaller(J)I
.end method

.method private static native getViewName(JI)Ljava/lang/String;
.end method

.method private static native getViewType(J)I
.end method


# virtual methods
.method public id()I
    .locals 1

    const/4 v0, -0x4

    return v0
.end method

.method public register(Ljava/lang/String;Lcom/infinite/app/ViewSystem$View;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/infinite/app/ViewSystem;->registeredViews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public showView(Landroid/content/Context;JJ)V
    .locals 6

    .line 26
    invoke-static {p4, p5}, Lcom/infinite/app/ViewSystem;->getViewType(J)I

    move-result v0

    .line 27
    invoke-static {p2, p3, v0}, Lcom/infinite/app/ViewSystem;->getViewName(JI)Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-static {p4, p5}, Lcom/infinite/app/ViewSystem;->getViewCaller(J)I

    move-result v4

    .line 29
    invoke-static {p4, p5}, Lcom/infinite/app/ViewSystem;->getViewAnchor(J)[I

    move-result-object v5

    .line 31
    iget-object p3, p0, Lcom/infinite/app/ViewSystem;->registeredViews:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 32
    iget-object p3, p0, Lcom/infinite/app/ViewSystem;->registeredViews:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/infinite/app/ViewSystem$View;

    move-object v1, p1

    move-wide v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/infinite/app/ViewSystem$View;->show(Landroid/content/Context;JI[I)V

    .line 35
    :cond_0
    invoke-static {p4, p5}, Lcom/infinite/app/ViewSystem;->deleteView(J)V

    return-void
.end method
