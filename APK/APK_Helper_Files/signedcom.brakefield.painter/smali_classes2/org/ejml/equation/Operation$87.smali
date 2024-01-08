.class Lorg/ejml/equation/Operation$87;
.super Lorg/ejml/equation/Operation;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/equation/Operation;->matrixConstructor(Lorg/ejml/equation/MatrixConstructor;)Lorg/ejml/equation/Operation$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$m:Lorg/ejml/equation/MatrixConstructor;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ejml/equation/MatrixConstructor;)V
    .locals 0

    .line 1742
    iput-object p2, p0, Lorg/ejml/equation/Operation$87;->val$m:Lorg/ejml/equation/MatrixConstructor;

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 1

    .line 1746
    iget-object v0, p0, Lorg/ejml/equation/Operation$87;->val$m:Lorg/ejml/equation/MatrixConstructor;

    invoke-virtual {v0}, Lorg/ejml/equation/MatrixConstructor;->construct()V

    return-void
.end method
