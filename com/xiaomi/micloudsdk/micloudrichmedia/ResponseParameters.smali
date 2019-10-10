.class Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters$StorageType;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "code"

.field public static final g:Ljava/lang/String; = "description"

.field public static final h:Ljava/lang/String; = "result"

.field public static final i:Ljava/lang/String; = "data"

.field public static final j:Ljava/lang/String; = "reason"

.field public static final k:Ljava/lang/String; = "fileId"

.field public static final l:Ljava/lang/String; = "tmpid"

.field public static final m:Ljava/lang/String; = "_hostingserver"

.field public static final n:Ljava/lang/String; = "tmpUrl"

.field public static final o:Ljava/lang/String; = "downloadurl"

.field public static final p:Ljava/lang/String; = "ckey"

.field public static final q:Ljava/lang/String; = "fileSha1"

.field public static final r:Ljava/lang/String; = "shareId"

.field public static final s:Ljava/lang/String; = "expireAt"

.field public static final t:I = 0x0

.field public static final u:I = 0x2718

.field public static final v:I = 0x13881

.field public static final w:I = 0x13882

.field public static final x:I = 0x13883

.field public static final y:I = 0x13884

.field public static final z:I = 0x13885


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The response json string is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/d;->a(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;-><init>()V

    const-string v1, "code"

    const/4 v2, -0x1

    .line 50
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    const-string v1, "result"

    const-string v2, ""

    .line 51
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->a:Ljava/lang/String;

    const-string v1, "description"

    const-string v2, ""

    .line 52
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->c:Ljava/lang/String;

    const-string v1, "reason"

    const-string v2, ""

    .line 53
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->d:Ljava/lang/String;

    .line 54
    iget v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->b:I

    if-nez v1, :cond_4c

    const-string v1, "data"

    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->e:Lorg/json/JSONObject;

    :cond_4c
    return-object v0
.end method
