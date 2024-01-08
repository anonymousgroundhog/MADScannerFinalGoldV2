.class public abstract Lcom/infinite/app/CoreApp;
.super Lcom/infinite/core/NativeObject;
.source "CoreApp.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method


# virtual methods
.method public abstract findComponent(Ljava/lang/String;)Lcom/infinite/app/ui/UIComponent;
.end method

.method public abstract getComponent(I)Lcom/infinite/app/ui/UIComponent;
.end method

.method public abstract update()V
.end method
