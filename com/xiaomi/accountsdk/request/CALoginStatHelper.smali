.class Lcom/xiaomi/accountsdk/request/CALoginStatHelper;
.super Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;
    }
.end annotation


# instance fields
.field final a:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

.field final b:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

.field final e:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

.field final f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;-><init>()V

    .line 51
    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->a:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    .line 52
    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->b:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->c:Ljava/util/Map;

    .line 54
    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->d:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    .line 55
    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->e:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    .line 56
    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    return-void
.end method

.method private final c(I)Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    if-nez v0, :cond_1c

    .line 149
    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->a:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Z)V

    return-void
.end method

.method public a(I)V
    .registers 3

    .line 95
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->c(I)Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Z)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 3

    .line 90
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->c(I)Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->a:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->d:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Z)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->a:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Z)V

    return-void
.end method

.method public b(I)V
    .registers 3

    .line 100
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->c(I)Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->b:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->b:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->e:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Z)V

    return-void
.end method

.method public d()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->b:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Z)V

    return-void
.end method

.method public e()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->d:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->e:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->d(Ljava/lang/String;)V

    return-void
.end method

.method final i()Z
    .registers 7

    .line 137
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->a:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->a:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    or-int/2addr v0, v2

    .line 138
    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->b:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->b:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    or-int/2addr v0, v3

    .line 139
    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->d:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->d:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    or-int/2addr v0, v3

    .line 140
    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    .line 141
    iget-object v5, v4, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    if-eqz v5, :cond_62

    iget-object v4, v4, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->d:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_62

    const/4 v4, 0x1

    goto :goto_63

    :cond_62
    const/4 v4, 0x0

    :goto_63
    or-int/2addr v0, v4

    goto :goto_48

    :cond_65
    return v0
.end method

.method final j()Ljava/lang/String;
    .registers 8

    .line 156
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "c_ip"

    .line 159
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->a:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "c_t"

    .line 160
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->a:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "c_r"

    .line 161
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->a:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "r_t"

    .line 164
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->e:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d_ip"

    .line 167
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->b:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d_t"

    .line 168
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->b:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d_r"

    .line 169
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->b:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 173
    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    if-eqz v3, :cond_db

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v5, v5, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    invoke-virtual {v3, v5}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "r"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 175
    :cond_db
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "should no be null here"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e3
    const-string v1, "h_t"

    .line 184
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->d:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h_r"

    .line 185
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->d:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "all_t"

    .line 188
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "all_r"

    .line 189
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->f:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hdid"

    .line 192
    new-instance v2, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->e()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "http://dummyurl/caLoginDiagnosis?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "_ver"

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3d

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/xiaomi/accountsdk/account/c;->a:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_147
    :goto_147
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v4, :cond_147

    if-nez v5, :cond_15e

    goto :goto_147

    :cond_15e
    const-string v6, "&"

    .line 203
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_147

    .line 209
    :cond_16d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
