.class public Lorg/ejml/equation/Macro$Assign;
.super Lorg/ejml/equation/Operation;
.source "Macro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/equation/Macro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Assign"
.end annotation


# instance fields
.field macros:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/ejml/equation/Macro;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/ejml/equation/Macro;


# direct methods
.method protected constructor <init>(Lorg/ejml/equation/Macro;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/ejml/equation/Macro;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lorg/ejml/equation/Macro$Assign;->this$0:Lorg/ejml/equation/Macro;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Macro:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/ejml/equation/Macro;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ejml/equation/Operation;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lorg/ejml/equation/Macro$Assign;->macros:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .line 72
    iget-object v0, p0, Lorg/ejml/equation/Macro$Assign;->macros:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/ejml/equation/Macro$Assign;->this$0:Lorg/ejml/equation/Macro;

    iget-object v1, v1, Lorg/ejml/equation/Macro;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/ejml/equation/Macro$Assign;->this$0:Lorg/ejml/equation/Macro;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
