.class public Lcn/kuaipan/android/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    .line 51
    sget-object v1, Lcn/kuaipan/android/utils/JsonUtils$1;->a:[I

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/h;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_3a

    goto :goto_39

    .line 75
    :pswitch_11
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Meet EOF when json not end."

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :pswitch_19
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->k()V

    goto :goto_39

    .line 65
    :pswitch_1d
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 62
    :pswitch_22
    invoke-static {p0}, Lcn/kuaipan/android/utils/i;->b(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_39

    .line 59
    :pswitch_27
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->j()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_39

    .line 56
    :pswitch_30
    invoke-static {p0}, Lcn/kuaipan/android/utils/i;->c(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_39

    .line 53
    :pswitch_35
    invoke-static {p0}, Lcn/kuaipan/android/utils/i;->d(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;

    move-result-object v1

    :goto_39
    return-object v1

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_30
        :pswitch_27
        :pswitch_22
        :pswitch_1d
        :pswitch_19
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    new-instance v0, Lcn/kuaipan/android/utils/f;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcn/kuaipan/android/utils/f;-><init>(Ljava/io/Reader;)V

    .line 32
    invoke-static {v0}, Lcn/kuaipan/android/utils/i;->a(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;

    move-result-object p0

    .line 33
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    sget-object v1, Lcn/kuaipan/android/utils/h;->j:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_17

    return-object p0

    .line 34
    :cond_17
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Document not end of EOF"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 13
    new-instance v0, Lcn/kuaipan/android/utils/f;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/f;-><init>(Ljava/io/Reader;)V

    .line 14
    invoke-static {v0}, Lcn/kuaipan/android/utils/i;->d(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;

    move-result-object p0

    .line 15
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    sget-object v1, Lcn/kuaipan/android/utils/h;->j:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_12

    return-object p0

    .line 16
    :cond_12
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Document not end of EOF"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_1a

    .line 86
    :catch_9
    :try_start_9
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_11} :catch_12

    goto :goto_1a

    .line 88
    :catch_12
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->l()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1a
    return-object v0
.end method

.method public static b(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    new-instance v0, Lcn/kuaipan/android/utils/f;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/f;-><init>(Ljava/io/Reader;)V

    .line 23
    invoke-static {v0}, Lcn/kuaipan/android/utils/i;->c(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;

    move-result-object p0

    .line 24
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    sget-object v1, Lcn/kuaipan/android/utils/h;->j:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_12

    return-object p0

    .line 25
    :cond_12
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Document not end of EOF"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->d()V

    .line 96
    invoke-static {}, Lcn/kuaipan/android/utils/m;->b()Lcn/kuaipan/android/utils/m;

    move-result-object v0

    .line 98
    :try_start_7
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v1

    .line 99
    :goto_b
    sget-object v2, Lcn/kuaipan/android/utils/h;->d:Lcn/kuaipan/android/utils/h;

    if-eq v1, v2, :cond_1f

    .line 100
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcn/kuaipan/android/utils/i;->a(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/kuaipan/android/utils/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v1

    goto :goto_b

    .line 103
    :cond_1f
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->e()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_22} :catch_28
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    move-exception p0

    .line 108
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/m;->a()V

    .line 109
    throw p0

    :catch_28
    move-exception p0

    .line 105
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/m;->a()V

    .line 106
    throw p0
.end method

.method public static c(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    new-instance v0, Lcn/kuaipan/android/utils/f;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/f;-><init>(Ljava/io/Reader;)V

    .line 41
    invoke-static {v0}, Lcn/kuaipan/android/utils/i;->a(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;

    move-result-object p0

    .line 42
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    sget-object v1, Lcn/kuaipan/android/utils/h;->j:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_12

    return-object p0

    .line 43
    :cond_12
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Document not end of EOF"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->b()V

    .line 116
    invoke-static {}, Lcn/kuaipan/android/utils/n;->b()Lcn/kuaipan/android/utils/n;

    move-result-object v0

    .line 118
    :try_start_7
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v1

    .line 119
    :goto_b
    sget-object v2, Lcn/kuaipan/android/utils/h;->b:Lcn/kuaipan/android/utils/h;

    if-eq v1, v2, :cond_1b

    .line 120
    invoke-static {p0}, Lcn/kuaipan/android/utils/i;->a(Lcn/kuaipan/android/utils/f;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuaipan/android/utils/n;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v1

    goto :goto_b

    .line 123
    :cond_1b
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->c()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1e} :catch_24
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception p0

    .line 128
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/n;->a()V

    .line 129
    throw p0

    :catch_24
    move-exception p0

    .line 125
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/n;->a()V

    .line 126
    throw p0
.end method
