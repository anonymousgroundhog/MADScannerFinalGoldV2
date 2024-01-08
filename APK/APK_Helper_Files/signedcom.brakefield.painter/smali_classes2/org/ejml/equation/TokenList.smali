.class Lorg/ejml/equation/TokenList;
.super Ljava/lang/Object;
.source "TokenList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/equation/TokenList$Token;,
        Lorg/ejml/equation/TokenList$Type;
    }
.end annotation


# instance fields
.field first:Lorg/ejml/equation/TokenList$Token;

.field last:Lorg/ejml/equation/TokenList$Token;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/ejml/equation/TokenList;->size:I

    return-void
.end method

.method public constructor <init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/ejml/equation/TokenList;->size:I

    .line 46
    iput-object p1, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    .line 47
    iput-object p2, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    :goto_0
    if-eqz p1, :cond_0

    .line 51
    iget p2, p0, Lorg/ejml/equation/TokenList;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/ejml/equation/TokenList;->size:I

    .line 52
    iget-object p1, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lorg/ejml/equation/TokenList$Token;
    .locals 1

    .line 99
    new-instance v0, Lorg/ejml/equation/TokenList$Token;

    invoke-direct {v0, p1}, Lorg/ejml/equation/TokenList$Token;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v0}, Lorg/ejml/equation/TokenList;->push(Lorg/ejml/equation/TokenList$Token;)V

    return-object v0
.end method

.method public add(Lorg/ejml/equation/Function;)Lorg/ejml/equation/TokenList$Token;
    .locals 1

    .line 63
    new-instance v0, Lorg/ejml/equation/TokenList$Token;

    invoke-direct {v0, p1}, Lorg/ejml/equation/TokenList$Token;-><init>(Lorg/ejml/equation/Function;)V

    .line 64
    invoke-virtual {p0, v0}, Lorg/ejml/equation/TokenList;->push(Lorg/ejml/equation/TokenList$Token;)V

    return-object v0
.end method

.method public add(Lorg/ejml/equation/Symbol;)Lorg/ejml/equation/TokenList$Token;
    .locals 1

    .line 87
    new-instance v0, Lorg/ejml/equation/TokenList$Token;

    invoke-direct {v0, p1}, Lorg/ejml/equation/TokenList$Token;-><init>(Lorg/ejml/equation/Symbol;)V

    .line 88
    invoke-virtual {p0, v0}, Lorg/ejml/equation/TokenList;->push(Lorg/ejml/equation/TokenList$Token;)V

    return-object v0
.end method

.method public add(Lorg/ejml/equation/Variable;)Lorg/ejml/equation/TokenList$Token;
    .locals 1

    .line 75
    new-instance v0, Lorg/ejml/equation/TokenList$Token;

    invoke-direct {v0, p1}, Lorg/ejml/equation/TokenList$Token;-><init>(Lorg/ejml/equation/Variable;)V

    .line 76
    invoke-virtual {p0, v0}, Lorg/ejml/equation/TokenList;->push(Lorg/ejml/equation/TokenList$Token;)V

    return-object v0
.end method

.method public extractSubList(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList;
    .locals 2

    if-ne p1, p2, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 201
    new-instance p2, Lorg/ejml/equation/TokenList;

    invoke-direct {p2, p1, p1}, Lorg/ejml/equation/TokenList;-><init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    return-object p2

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    if-ne v0, p1, :cond_1

    .line 204
    iget-object v0, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iput-object v0, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    .line 206
    :cond_1
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    if-ne v0, p2, :cond_2

    .line 207
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iput-object v0, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    .line 209
    :cond_2
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iget-object v1, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iput-object v1, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 212
    :cond_3
    iget-object v0, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iget-object v1, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iput-object v1, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    :cond_4
    const/4 v0, 0x0

    .line 215
    iput-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 216
    iput-object v0, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 218
    new-instance v0, Lorg/ejml/equation/TokenList;

    invoke-direct {v0, p1, p2}, Lorg/ejml/equation/TokenList;-><init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 219
    iget p1, p0, Lorg/ejml/equation/TokenList;->size:I

    invoke-virtual {v0}, Lorg/ejml/equation/TokenList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/ejml/equation/TokenList;->size:I

    return-object v0
.end method

.method public getFirst()Lorg/ejml/equation/TokenList$Token;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    return-object v0
.end method

.method public getLast()Lorg/ejml/equation/TokenList$Token;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    return-object v0
.end method

.method public insert(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V
    .locals 1

    if-nez p1, :cond_1

    .line 131
    iget p1, p0, Lorg/ejml/equation/TokenList;->size:I

    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0, p2}, Lorg/ejml/equation/TokenList;->push(Lorg/ejml/equation/TokenList$Token;)V

    goto :goto_1

    .line 134
    :cond_0
    iget-object p1, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    iput-object p2, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    const/4 p1, 0x0

    .line 135
    iput-object p1, p2, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 136
    iget-object p1, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    iput-object p1, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 137
    iput-object p2, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    .line 138
    iget p1, p0, Lorg/ejml/equation/TokenList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/ejml/equation/TokenList;->size:I

    goto :goto_1

    .line 140
    :cond_1
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    if-eq p1, v0, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iput-object v0, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 144
    iput-object p1, p2, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 145
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iput-object p2, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 146
    iput-object p2, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 147
    iget p1, p0, Lorg/ejml/equation/TokenList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/ejml/equation/TokenList;->size:I

    goto :goto_1

    .line 141
    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lorg/ejml/equation/TokenList;->push(Lorg/ejml/equation/TokenList$Token;)V

    :goto_1
    return-void
.end method

.method public insertAfter(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList;)V
    .locals 2

    .line 228
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 230
    iget-object v1, p2, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    iput-object v1, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 231
    iget-object v1, p2, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    iput-object p1, v1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    if-nez v0, :cond_0

    .line 233
    iget-object p1, p2, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    iput-object p1, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p2, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    iput-object p1, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 236
    iget-object p1, p2, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    iput-object v0, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 238
    :goto_0
    iget p1, p0, Lorg/ejml/equation/TokenList;->size:I

    iget p2, p2, Lorg/ejml/equation/TokenList;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/ejml/equation/TokenList;->size:I

    return-void
.end method

.method public print()V
    .locals 2

    .line 380
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    :goto_0
    if-eqz v0, :cond_0

    .line 382
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 383
    iget-object v0, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public push(Lorg/ejml/equation/TokenList$Token;)V
    .locals 2

    .line 108
    iget v0, p0, Lorg/ejml/equation/TokenList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/equation/TokenList;->size:I

    .line 109
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    iput-object p1, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    .line 111
    iput-object p1, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    .line 112
    iput-object v1, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 113
    iput-object v1, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    iput-object p1, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 116
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    iput-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 117
    iput-object v1, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 118
    iput-object p1, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    :goto_0
    return-void
.end method

.method public remove(Lorg/ejml/equation/TokenList$Token;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    if-ne p1, v0, :cond_0

    .line 158
    iget-object v0, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iput-object v0, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    if-ne p1, v0, :cond_1

    .line 161
    iget-object v0, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iput-object v0, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    .line 163
    :cond_1
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iget-object v1, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iput-object v1, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 166
    :cond_2
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iget-object v1, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iput-object v1, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    :cond_3
    const/4 v0, 0x0

    .line 170
    iput-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iput-object v0, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 171
    iget p1, p0, Lorg/ejml/equation/TokenList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/ejml/equation/TokenList;->size:I

    return-void
.end method

.method public replace(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    if-ne v0, p1, :cond_0

    .line 179
    iput-object p2, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    if-ne v0, p1, :cond_1

    .line 181
    iput-object p2, p0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    .line 183
    :cond_1
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iput-object v0, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 184
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iput-object v0, p2, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 186
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iput-object p2, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 188
    :cond_2
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iput-object p2, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    :cond_3
    const/4 p2, 0x0

    .line 191
    iput-object p2, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iput-object p2, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    return-void
.end method

.method public size()I
    .locals 1

    .line 273
    iget v0, p0, Lorg/ejml/equation/TokenList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    iget-object v1, p0, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    :goto_0
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, v1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
