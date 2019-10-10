.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/m;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/m;->b:Ljava/lang/String;

    .line 16
    iput-wide p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/m;->c:J

    .line 17
    iput-object p5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/m;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/m;
    .registers 9

    const-string v0, "fileId"

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "shareId"

    .line 22
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "downloadurl"

    .line 23
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "expireAt"

    const-wide/16 v5, 0x0

    .line 24
    invoke-virtual {p0, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 25
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    return-object v1

    .line 26
    :cond_29
    :goto_29
    new-instance p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/m;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/micloudsdk/micloudrichmedia/m;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object p0
.end method
