.class public Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsInfo"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SnsInfo"

.field private static final b:Ljava/lang/String; = "snsType"

.field private static final c:Ljava/lang/String; = "snsTypeName"

.field private static final d:Ljava/lang/String; = "snsNickName"

.field private static final e:Ljava/lang/String; = "snsIcon"


# instance fields
.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->f:I

    .line 236
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->g:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->h:Ljava/lang/String;

    .line 238
    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/List;I)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;",
            ">;I)",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;"
        }
    .end annotation

    if-eqz p0, :cond_19

    .line 326
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;

    if-eqz v0, :cond_6

    .line 327
    iget v1, v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->f:I

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;
    .registers 5

    const-string v0, "snsType"

    const/4 v1, 0x0

    .line 282
    invoke-static {p0, v0, v1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "snsTypeName"

    .line 283
    invoke-static {p0, v1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "snsNickName"

    .line 284
    invoke-static {p0, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "snsIcon"

    .line 285
    invoke-static {p0, v3}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 286
    new-instance v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_23

    .line 265
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 266
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_b

    .line 267
    check-cast v1, Ljava/util/Map;

    .line 268
    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->a(Ljava/util/Map;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_23
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;",
            ">;"
        }
    .end annotation

    .line 309
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/t;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 313
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_f

    .line 314
    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->a(Ljava/util/Map;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;

    move-result-object v1

    .line 315
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    return-object v0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 290
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_43

    .line 292
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;

    .line 294
    :try_start_17
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "snsType"

    .line 295
    iget v4, v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->f:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "snsTypeName"

    .line 296
    iget-object v4, v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "snsIcon"

    .line 297
    iget-object v4, v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "snsNickName"

    .line 298
    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_3b} :catch_3c

    goto :goto_b

    :catch_3c
    move-exception v1

    const-string v2, "SnsInfo"

    .line 301
    invoke-static {v2, v1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :cond_43
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 251
    iget v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->f:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$SnsInfo;->i:Ljava/lang/String;

    return-object v0
.end method
