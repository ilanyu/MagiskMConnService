.class public final Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;
.super Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composition"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    .line 49
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    aget-object v2, p1, v1

    if-eqz v2, :cond_17

    .line 51
    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 88
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(I)V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 124
    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 118
    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a(ILjava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 82
    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(Z)V
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 144
    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a_()V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 58
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->a_()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public b()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 94
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->b()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public b(I)V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 130
    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->b(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 100
    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public b_()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 64
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->b_()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public c()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 106
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->c()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 158
    invoke-virtual {v1, p1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->c(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public d()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 112
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->d()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public e()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 137
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->e()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public f()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 151
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->f()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public g()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 165
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->g()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public h()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 172
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->h()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public k()V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 70
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->k()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public l()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    .line 76
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->l()V

    goto :goto_6

    :cond_16
    return-void
.end method
