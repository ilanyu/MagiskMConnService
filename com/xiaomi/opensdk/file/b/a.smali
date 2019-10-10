.class public Lcom/xiaomi/opensdk/file/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "kss"

.field public static final b:Ljava/lang/String; = "storage"

.field public static final c:Ljava/lang/String; = "existed"

.field public static final d:Ljava/lang/String; = "sha1"

.field public static final e:Ljava/lang/String; = "size"

.field public static final f:Ljava/lang/String; = "uploadId"

.field public static final g:Ljava/lang/String; = "filename"

.field public static final h:Ljava/lang/String; = "mimeType"

.field public static final i:Ljava/lang/String; = "upload_id"

.field public static final j:Ljava/lang/String; = "uploadId"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 40
    :try_start_0
    new-instance v0, Lcn/kuaipan/android/utils/f;

    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/kuaipan/android/utils/f;-><init>(Ljava/io/Reader;)V

    .line 41
    invoke-static {v0}, Lcn/kuaipan/android/utils/i;->a(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 43
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    sget-object v2, Lcn/kuaipan/android/utils/h;->j:Lcn/kuaipan/android/utils/h;

    if-ne v0, v2, :cond_32

    if-eqz v1, :cond_25

    .line 47
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    return-object v1

    .line 48
    :cond_25
    new-instance v0, Lcn/kuaipan/android/a/e;

    const v1, 0x7a50b

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    throw v0

    .line 44
    :cond_32
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Document not end of EOF"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3a} :catch_42
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception p0

    const-string v0, "contentKssJsonToMap failed."

    .line 55
    invoke-static {p0, v0}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p0

    throw p0

    :catch_42
    move-exception p0

    const-string v0, "contentKssJsonToMap failed."

    .line 53
    invoke-static {p0, v0}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object p0

    throw p0
.end method
