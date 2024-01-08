.class public Lcom/brakefield/infinitestudio/utils/Todo;
.super Ljava/lang/Object;
.source "Todo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/utils/Todo$RequiredTodoException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fix(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static required(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/utils/Todo$RequiredTodoException;
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/brakefield/infinitestudio/utils/Todo$RequiredTodoException;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/utils/Todo$RequiredTodoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
