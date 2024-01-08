.class public Lpabeles/concurrency/IntOperatorTask$Max;
.super Lpabeles/concurrency/IntOperatorTask;
.source "IntOperatorTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpabeles/concurrency/IntOperatorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Max"
.end annotation


# direct methods
.method public constructor <init>(IILjava/lang/Class;Lpabeles/concurrency/IntProducerNumber;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lpabeles/concurrency/IntOperatorTask;-><init>(IILjava/lang/Class;Lpabeles/concurrency/IntProducerNumber;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 137
    invoke-super {p0}, Lpabeles/concurrency/IntOperatorTask;->getRawResult()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(IILjava/lang/Class;Lpabeles/concurrency/IntProducerNumber;)Lpabeles/concurrency/IntOperatorTask;
    .locals 1

    .line 145
    new-instance v0, Lpabeles/concurrency/IntOperatorTask$Max;

    invoke-direct {v0, p1, p2, p3, p4}, Lpabeles/concurrency/IntOperatorTask$Max;-><init>(IILjava/lang/Class;Lpabeles/concurrency/IntProducerNumber;)V

    return-object v0
.end method

.method protected operator(Ljava/lang/Number;)V
    .locals 4

    .line 150
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->primitiveType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    goto/16 :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->primitiveType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->primitiveType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 155
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->primitiveType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 157
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->primitiveType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 159
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    goto :goto_0

    .line 160
    :cond_4
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->primitiveType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 161
    iget-object v0, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lpabeles/concurrency/IntOperatorTask$Max;->result:Ljava/lang/Number;

    :goto_0
    return-void

    .line 163
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown primitive type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lpabeles/concurrency/IntOperatorTask$Max;->primitiveType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Ljava/lang/Number;

    invoke-super {p0, p1}, Lpabeles/concurrency/IntOperatorTask;->setRawResult(Ljava/lang/Number;)V

    return-void
.end method
