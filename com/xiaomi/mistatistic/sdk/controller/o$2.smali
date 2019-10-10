.class Lcom/xiaomi/mistatistic/sdk/controller/o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/o;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/app/Activity;)V
    .registers 3

    .line 181
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/o;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/o;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b(Landroid/app/Activity;)Ljava/io/File;

    move-result-object v0

    .line 186
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 190
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    .line 192
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 193
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    const-string v4, "height"

    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "width"

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-direct {v2}, Lcom/xiaomi/mistatistic/sdk/controller/s;-><init>()V

    .line 199
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$2;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a(Landroid/app/Activity;)V

    .line 200
    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Ljava/util/List;

    move-result-object v2

    .line 201
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 202
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/mistatistic/sdk/data/d;

    .line 203
    invoke-virtual {v5}, Lcom/xiaomi/mistatistic/sdk/data/d;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4b

    :cond_5f
    const-string v4, "clickable_views"

    .line 205
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "appId"

    .line 208
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "appKey"

    .line 209
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "deviceId"

    .line 210
    new-instance v5, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v5}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v5}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "meta"

    .line 211
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdk_version"

    const-string v4, "1.9.19"

    .line 212
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://dev.mi.com/mistats/xmstats/event/dynamic/upload"

    const-string v4, "test"

    .line 214
    invoke-static {v1, v3, v0, v4}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload snapshot with clickable views "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    .line 216
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bc} :catch_bd

    goto :goto_c3

    :catch_bd
    move-exception v0

    const-string v1, "uploadSnapShot task exception: "

    .line 218
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c3
    return-void
.end method
