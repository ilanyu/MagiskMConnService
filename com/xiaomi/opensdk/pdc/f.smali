.class public Lcom/xiaomi/opensdk/pdc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "fit"

.field private static final d:Ljava/lang/String; = "sysFit"

.field private static final e:Ljava/lang/String; = "default"

.field private static final f:Ljava/lang/String; = "1"


# instance fields
.field private final a:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;

.field private final b:Lcom/xiaomi/opensdk/pdc/i;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v6, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;

    const-string v4, "sysFit"

    const-string v5, "default"

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;-><init>(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/xiaomi/opensdk/pdc/f;->a:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;

    .line 37
    new-instance p1, Lcom/xiaomi/opensdk/pdc/i;

    iget-object p2, p0, Lcom/xiaomi/opensdk/pdc/f;->a:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/pdc/i;-><init>(Lcom/xiaomi/opensdk/pdc/k;)V

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/f;->b:Lcom/xiaomi/opensdk/pdc/i;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UserProfile;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/UserProfile;-><init>()V

    const-string v1, "birthday"

    .line 156
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "birthday"

    .line 157
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->c:J

    :cond_15
    const-string v1, "gender"

    .line 159
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "gender"

    .line 160
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/pdc/UserProfile;->a(I)Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->d:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    :cond_29
    return-object v0
.end method


# virtual methods
.method public a()Lcom/xiaomi/opensdk/pdc/UserProfile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/f;->b:Lcom/xiaomi/opensdk/pdc/i;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/pdc/i;->b(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->e()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 119
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 120
    sget-object v1, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->a:[I

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7e

    goto :goto_4c

    .line 126
    :pswitch_24
    new-instance v0, Lcom/xiaomi/opensdk/a/a;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/a/a;-><init>()V

    throw v0

    .line 124
    :pswitch_2a
    new-instance v1, Lcom/xiaomi/opensdk/a/b;

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->h()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/opensdk/a/b;-><init>(Ljava/lang/String;J)V

    throw v1

    .line 122
    :pswitch_38
    new-instance v1, Lcom/xiaomi/opensdk/a/e;

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_42
    new-instance v1, Lcom/xiaomi/opensdk/a/e;

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->a()Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 135
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->a()Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/opensdk/pdc/j;->f:Lorg/json/JSONObject;
    :try_end_58
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_0 .. :try_end_58} :catch_76

    if-eqz v0, :cond_66

    .line 138
    :try_start_5a
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/pdc/f;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UserProfile;

    move-result-object v0
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_5e} :catch_5f
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_5a .. :try_end_5e} :catch_76

    return-object v0

    :catch_5f
    move-exception v0

    .line 141
    :try_start_60
    new-instance v1, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 144
    :cond_66
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    const-string v1, "SyncException in getProfile(), profile not exist."

    invoke-direct {v0, v1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_6e
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    const-string v1, "SyncException in getProfile(), record not exist."

    invoke-direct {v0, v1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_76
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_60 .. :try_end_76} :catch_76

    :catch_76
    move-exception v0

    .line 150
    new-instance v1, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2a
        :pswitch_24
    .end packed-switch
.end method

.method public a(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    .line 84
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/UserProfile;-><init>()V

    .line 85
    iput-wide p1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->c:J

    .line 86
    invoke-virtual {p0, v0}, Lcom/xiaomi/opensdk/pdc/f;->a(Lcom/xiaomi/opensdk/pdc/g;)V

    return-void

    .line 82
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u53c2\u8003API\u6587\u6863"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->a:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    if-eq p1, v0, :cond_11

    sget-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->b:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 98
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u53c2\u8003API\u6587\u6863"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_11
    :goto_11
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/UserProfile;-><init>()V

    .line 101
    iput-object p1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->d:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 102
    invoke-virtual {p0, v0}, Lcom/xiaomi/opensdk/pdc/f;->a(Lcom/xiaomi/opensdk/pdc/g;)V

    return-void
.end method

.method public a(Lcom/xiaomi/opensdk/pdc/g;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/f;->b:Lcom/xiaomi/opensdk/pdc/i;

    const-string v1, "fit"

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/g;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->e()Z

    move-result v0

    if-nez v0, :cond_54

    .line 51
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 52
    sget-object v0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->a:[I

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_64

    goto :goto_54

    .line 58
    :pswitch_2c
    new-instance p1, Lcom/xiaomi/opensdk/a/a;

    invoke-direct {p1}, Lcom/xiaomi/opensdk/a/a;-><init>()V

    throw p1

    .line 56
    :pswitch_32
    new-instance v0, Lcom/xiaomi/opensdk/a/b;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->h()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/opensdk/a/b;-><init>(Ljava/lang/String;J)V

    throw v0

    .line 54
    :pswitch_40
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_4a
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_54} :catch_5c
    .catch Lcom/xiaomi/opensdk/pdc/h; {:try_start_0 .. :try_end_54} :catch_55

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception p1

    .line 69
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_5c
    move-exception p1

    .line 67
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_40
        :pswitch_32
        :pswitch_2c
    .end packed-switch
.end method
