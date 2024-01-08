.class public final enum Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;
.super Ljava/lang/Enum;
.source "Section.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

.field public static final enum EMPTY:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

.field public static final enum FAILED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

.field public static final enum LOADED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

.field public static final enum LOADING:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;
    .locals 4

    .line 18
    sget-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADING:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    sget-object v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    sget-object v2, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->FAILED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    sget-object v3, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->EMPTY:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADING:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    .line 20
    new-instance v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    const-string v1, "LOADED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    .line 21
    new-instance v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    const-string v1, "FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->FAILED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    .line 22
    new-instance v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    const-string v1, "EMPTY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->EMPTY:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    .line 18
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->$values()[Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->$VALUES:[Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;
    .locals 1

    .line 18
    const-class v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;
    .locals 1

    .line 18
    sget-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->$VALUES:[Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    return-object v0
.end method
