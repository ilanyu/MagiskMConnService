.class public Lcom/xiaomi/accountsdk/request/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;
        }
    .end annotation

    if-eqz p0, :cond_2f

    .line 185
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 189
    invoke-static {p1, p2}, Lcom/xiaomi/accountsdk/request/q;->a(Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {}, Lcom/xiaomi/accountsdk/request/q;->a()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/xiaomi/accountsdk/utils/j;->a(Ljava/lang/String;)V

    .line 191
    new-instance p2, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-direct {p2, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/util/Map;)V

    .line 193
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->c()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(I)V

    return-object p2

    .line 187
    :cond_27
    new-instance p0, Lcom/xiaomi/accountsdk/request/k;

    const-string p1, "invalid response from server"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;)V

    throw p0

    .line 183
    :cond_2f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no response from server"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    move-object v6, v0

    check-cast v6, Lcom/xiaomi/accountsdk/utils/h;

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    if-nez p5, :cond_7

    .line 48
    new-instance p5, Lcom/xiaomi/accountsdk/utils/a;

    invoke-direct {p5, p4}, Lcom/xiaomi/accountsdk/utils/a;-><init>(Ljava/lang/String;)V

    :cond_7
    const-string v0, "GET"

    .line 51
    invoke-static {v0, p0, p1, p4, p5}, Lcom/xiaomi/accountsdk/request/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Ljava/util/Map;

    move-result-object v2

    move-object v1, p0

    move-object v3, p7

    move-object v4, p2

    move v5, p3

    move-object v6, p6

    .line 54
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 56
    invoke-static {p0, p4, p5}, Lcom/xiaomi/accountsdk/request/q;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method private static a()Lcom/xiaomi/accountsdk/utils/j;
    .registers 1

    .line 198
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/i;->a()Lcom/xiaomi/accountsdk/utils/j;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/k;
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 240
    :try_start_2
    invoke-interface {p1, p0}, Lcom/xiaomi/accountsdk/utils/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Lcom/xiaomi/accountsdk/request/d; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 243
    new-instance p1, Lcom/xiaomi/accountsdk/request/k;

    const-string v0, "failed to decrypt response"

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/accountsdk/request/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 237
    :cond_10
    new-instance p0, Lcom/xiaomi/accountsdk/request/d;

    const-string p1, "no invalid coder"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/d;
        }
    .end annotation

    .line 231
    new-instance v0, Lcom/xiaomi/accountsdk/utils/a;

    invoke-direct {v0, p3}, Lcom/xiaomi/accountsdk/utils/a;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/accountsdk/request/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/d;
        }
    .end annotation

    if-eqz p4, :cond_4d

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_43

    .line 208
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 209
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 210
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_17
    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    const-string v3, "_"

    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 216
    invoke-interface {p4, v1}, Lcom/xiaomi/accountsdk/utils/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_3f
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 222
    :cond_43
    invoke-static {p0, p1, v0, p3}, Lcom/xiaomi/accountsdk/utils/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "signature"

    .line 224
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 205
    :cond_4d
    new-instance p0, Lcom/xiaomi/accountsdk/request/d;

    const-string p1, "no invalid cypt coder"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    move-object v6, v0

    check-cast v6, Lcom/xiaomi/accountsdk/utils/h;

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 91
    invoke-static/range {p0 .. p7}, Lcom/xiaomi/accountsdk/request/q;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 93
    invoke-static {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    move-object v6, v0

    check-cast v6, Lcom/xiaomi/accountsdk/utils/h;

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    if-nez p5, :cond_7

    .line 129
    new-instance p5, Lcom/xiaomi/accountsdk/utils/a;

    invoke-direct {p5, p4}, Lcom/xiaomi/accountsdk/utils/a;-><init>(Ljava/lang/String;)V

    :cond_7
    const-string v0, "POST"

    .line 132
    invoke-static {v0, p0, p1, p4, p5}, Lcom/xiaomi/accountsdk/request/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Ljava/util/Map;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p7

    move v5, p3

    move-object v6, p6

    .line 135
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 137
    invoke-static {p0, p4, p5}, Lcom/xiaomi/accountsdk/request/q;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;Ljava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    move-object v6, v0

    check-cast v6, Lcom/xiaomi/accountsdk/utils/h;

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 155
    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/xiaomi/accountsdk/request/q;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/h;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/a;,
            Lcom/xiaomi/accountsdk/request/k;,
            Lcom/xiaomi/accountsdk/request/d;,
            Lcom/xiaomi/accountsdk/request/c;
        }
    .end annotation

    .line 174
    invoke-static/range {p0 .. p7}, Lcom/xiaomi/accountsdk/request/q;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/h;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    .line 176
    invoke-static {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;

    move-result-object p0

    return-object p0
.end method
