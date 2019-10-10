.class public Lcom/xiaomi/micloudsdk/request/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "RequestInjector"

.field private static final b:Ljava/lang/String; = "code"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/micloudsdk/c/d;)V
    .registers 4

    .line 24
    iget v0, p1, Lcom/xiaomi/micloudsdk/c/d;->k:I

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_21

    iget v0, p1, Lcom/xiaomi/micloudsdk/c/d;->l:I

    if-lez v0, :cond_21

    const-string v0, "com.xiaomi.action.DATA_IN_TRANSFER"

    .line 26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.cloudservice"

    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "retryTime"

    .line 28
    iget p1, p1, Lcom/xiaomi/micloudsdk/c/d;->l:I

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2b

    .line 30
    :cond_21
    iget p1, p1, Lcom/xiaomi/micloudsdk/c/d;->k:I

    const v0, 0xcb23

    if-ne p1, v0, :cond_2b

    .line 31
    invoke-static {p0}, La/a/a/e/f;->a(Landroid/content/Context;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "RequestInjector"

    const-string v1, "checkResponse"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_a

    return-void

    .line 40
    :cond_a
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/f;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 41
    invoke-static {p0}, La/a/a/e/f;->a(Landroid/content/Context;)V

    :cond_13
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 49
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 50
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_13

    const v1, 0xcb23

    if-ne p0, v1, :cond_17

    const/4 p0, 0x1

    return p0

    :catch_13
    move-exception p0

    .line 55
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_17
    return v0
.end method
