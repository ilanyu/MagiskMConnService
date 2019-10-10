.class public Lcom/xiaomi/micloudsdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 22
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/a/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/sync/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/sync/d;

    move-result-object p0

    return-object p0
.end method
