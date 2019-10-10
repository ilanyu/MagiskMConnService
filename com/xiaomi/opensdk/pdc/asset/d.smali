.class public final Lcom/xiaomi/opensdk/pdc/asset/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x5

.field private static volatile b:Lcom/xiaomi/opensdk/pdc/asset/d;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/asset/d;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/opensdk/pdc/asset/d;
    .registers 3

    .line 33
    sget-object v0, Lcom/xiaomi/opensdk/pdc/asset/d;->b:Lcom/xiaomi/opensdk/pdc/asset/d;

    if-nez v0, :cond_22

    .line 34
    const-class v0, Lcom/xiaomi/opensdk/pdc/asset/d;

    monitor-enter v0

    .line 35
    :try_start_7
    sget-object v1, Lcom/xiaomi/opensdk/pdc/asset/d;->b:Lcom/xiaomi/opensdk/pdc/asset/d;

    if-nez v1, :cond_1d

    if-eqz p0, :cond_15

    .line 39
    new-instance v1, Lcom/xiaomi/opensdk/pdc/asset/d;

    invoke-direct {v1, p0}, Lcom/xiaomi/opensdk/pdc/asset/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/opensdk/pdc/asset/d;->b:Lcom/xiaomi/opensdk/pdc/asset/d;

    goto :goto_1d

    .line 37
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_1d
    :goto_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw p0

    .line 43
    :cond_22
    :goto_22
    sget-object p0, Lcom/xiaomi/opensdk/pdc/asset/d;->b:Lcom/xiaomi/opensdk/pdc/asset/d;

    return-object p0
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 223
    instance-of v0, p1, Lcom/xiaomi/opensdk/pdc/asset/c;

    if-eqz v0, :cond_43

    .line 224
    check-cast p1, Lcom/xiaomi/opensdk/pdc/asset/c;

    .line 225
    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/asset/c;->a:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    if-eqz v0, :cond_39

    .line 226
    sget-object v0, Lcom/xiaomi/opensdk/pdc/asset/AssetFileMaster$1;->a:[I

    iget-object v1, p1, Lcom/xiaomi/opensdk/pdc/asset/c;->a:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    invoke-virtual {v1}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 234
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/asset/c;->b:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_1f
    new-instance p1, Lcom/xiaomi/opensdk/a/a;

    invoke-direct {p1}, Lcom/xiaomi/opensdk/a/a;-><init>()V

    throw p1

    .line 230
    :pswitch_25
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    iget-object v1, p1, Lcom/xiaomi/opensdk/pdc/asset/c;->b:Ljava/lang/String;

    iget p1, p1, Lcom/xiaomi/opensdk/pdc/asset/c;->c:I

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 228
    :pswitch_2f
    new-instance v0, Lcom/xiaomi/opensdk/a/b;

    iget-object v1, p1, Lcom/xiaomi/opensdk/pdc/asset/c;->b:Ljava/lang/String;

    iget-wide v2, p1, Lcom/xiaomi/opensdk/pdc/asset/c;->e:J

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/opensdk/a/b;-><init>(Ljava/lang/String;J)V

    throw v0

    .line 237
    :cond_39
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_43
    instance-of v0, p1, Lorg/json/JSONException;

    if-nez v0, :cond_48

    return-void

    .line 240
    :cond_48
    new-instance v0, Lcom/xiaomi/opensdk/a/e;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_25
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/k;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;)Lcom/xiaomi/opensdk/pdc/asset/b;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/asset/d;->a(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/k;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)Lcom/xiaomi/opensdk/pdc/asset/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/k;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)Lcom/xiaomi/opensdk/pdc/asset/b;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b7

    if-eqz p2, :cond_b7

    if-eqz p3, :cond_b7

    .line 76
    new-instance v0, Lcom/xiaomi/opensdk/file/a/h;

    invoke-direct {v0, p3, p4, p5}, Lcom/xiaomi/opensdk/file/a/h;-><init>(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)V

    .line 77
    iget-object p3, p0, Lcom/xiaomi/opensdk/pdc/asset/d;->c:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/xiaomi/opensdk/file/a/c;->a(Lcom/xiaomi/opensdk/file/a/h;)V

    const/4 p3, 0x0

    .line 81
    :goto_19
    :try_start_19
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/file/a/h;->g()Z

    move-result p4

    if-eqz p4, :cond_78

    sget p4, Lcom/xiaomi/opensdk/pdc/asset/d;->a:I

    if-ge p3, p4, :cond_78

    .line 85
    iget-object p4, p0, Lcom/xiaomi/opensdk/pdc/asset/d;->c:Landroid/content/Context;

    invoke-static {p4}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/xiaomi/opensdk/file/a/c;->b(Lcom/xiaomi/opensdk/file/a/h;)Lcom/xiaomi/opensdk/file/a/g;

    move-result-object p4

    .line 87
    invoke-interface {p2, p1, p4}, Lcom/xiaomi/opensdk/pdc/k;->a(Ljava/lang/String;Lcom/xiaomi/opensdk/file/a/g;)Lcom/xiaomi/opensdk/pdc/asset/e;

    move-result-object p4

    .line 88
    invoke-virtual {p4}, Lcom/xiaomi/opensdk/pdc/asset/e;->e()Z

    move-result p5

    if-eqz p5, :cond_5f

    .line 94
    iget-object p4, p4, Lcom/xiaomi/opensdk/pdc/asset/e;->a:Lorg/json/JSONObject;

    const-string p5, "existed"

    .line 95
    invoke-virtual {p4, p5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_46

    .line 98
    invoke-static {p1, p4}, Lcom/xiaomi/opensdk/pdc/asset/f;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/asset/b;

    move-result-object p1

    return-object p1

    .line 101
    :cond_46
    iget-object p5, p0, Lcom/xiaomi/opensdk/pdc/asset/d;->c:Landroid/content/Context;

    invoke-static {p5}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/xiaomi/opensdk/file/a/c;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/a/i;

    move-result-object p4

    .line 103
    invoke-virtual {v0, p4}, Lcom/xiaomi/opensdk/file/a/h;->a(Lcom/xiaomi/opensdk/file/a/i;)V

    .line 104
    iget-object p4, p0, Lcom/xiaomi/opensdk/pdc/asset/d;->c:Landroid/content/Context;

    invoke-static {p4}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/xiaomi/opensdk/file/a/c;->a(Lcom/xiaomi/opensdk/file/a/h;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    .line 89
    :cond_5f
    new-instance p1, Lcom/xiaomi/opensdk/pdc/asset/c;

    invoke-virtual {p4}, Lcom/xiaomi/opensdk/pdc/asset/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/xiaomi/opensdk/pdc/asset/e;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v2

    iget v3, p4, Lcom/xiaomi/opensdk/pdc/asset/e;->b:I

    .line 91
    invoke-virtual {p4}, Lcom/xiaomi/opensdk/pdc/asset/e;->j()Z

    move-result v4

    invoke-virtual {p4}, Lcom/xiaomi/opensdk/pdc/asset/e;->h()J

    move-result-wide v5

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V

    throw p1

    .line 109
    :cond_78
    iget-object p3, p0, Lcom/xiaomi/opensdk/pdc/asset/d;->c:Landroid/content/Context;

    invoke-static {p3}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/xiaomi/opensdk/file/a/c;->c(Lcom/xiaomi/opensdk/file/a/h;)Lcom/xiaomi/opensdk/file/a/a;

    move-result-object p3

    .line 110
    invoke-interface {p2, p1, p3}, Lcom/xiaomi/opensdk/pdc/k;->a(Ljava/lang/String;Lcom/xiaomi/opensdk/file/a/a;)Lcom/xiaomi/opensdk/pdc/asset/e;

    move-result-object p2

    .line 111
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/pdc/asset/e;->e()Z

    move-result p3

    if-eqz p3, :cond_93

    .line 117
    iget-object p2, p2, Lcom/xiaomi/opensdk/pdc/asset/e;->a:Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lcom/xiaomi/opensdk/pdc/asset/f;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/asset/b;

    move-result-object p1

    return-object p1

    .line 112
    :cond_93
    new-instance p1, Lcom/xiaomi/opensdk/pdc/asset/c;

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/pdc/asset/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/pdc/asset/e;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v2

    iget v3, p2, Lcom/xiaomi/opensdk/pdc/asset/e;->b:I

    .line 114
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/pdc/asset/e;->j()Z

    move-result v4

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/pdc/asset/e;->h()J

    move-result-wide v5

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V

    throw p1
    :try_end_ac
    .catch Lcom/xiaomi/opensdk/pdc/asset/c; {:try_start_19 .. :try_end_ac} :catch_b1
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_ac} :catch_ac

    :catch_ac
    move-exception p1

    .line 121
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/d;->a(Ljava/lang/Exception;)V

    goto :goto_b5

    :catch_b1
    move-exception p1

    .line 119
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/d;->a(Ljava/lang/Exception;)V

    :goto_b5
    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_b7
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string p2, "\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u53c2\u8003API\u6587\u6863"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/k;Lcom/xiaomi/opensdk/file/a/d;)Lcom/xiaomi/opensdk/pdc/asset/g;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3f

    if-eqz p2, :cond_3f

    if-eqz p3, :cond_3f

    .line 202
    :try_start_a
    invoke-interface {p3, p1, p2}, Lcom/xiaomi/opensdk/pdc/k;->b(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/asset/e;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/e;->e()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 210
    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/asset/e;->a:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/asset/f;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/asset/g;

    move-result-object p1

    return-object p1

    .line 205
    :cond_1b
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/e;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v2

    iget v3, p1, Lcom/xiaomi/opensdk/pdc/asset/e;->b:I

    .line 207
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/e;->j()Z

    move-result v4

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/e;->h()J

    move-result-wide v5

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V

    throw p2
    :try_end_34
    .catch Lcom/xiaomi/opensdk/pdc/asset/c; {:try_start_a .. :try_end_34} :catch_39
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_34} :catch_34

    :catch_34
    move-exception p1

    .line 214
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/d;->a(Ljava/lang/Exception;)V

    goto :goto_3d

    :catch_39
    move-exception p1

    .line 212
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/d;->a(Ljava/lang/Exception;)V

    :goto_3d
    const/4 p1, 0x0

    return-object p1

    .line 199
    :cond_3f
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string p2, "\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u53c2\u8003API\u6587\u6863"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/k;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 147
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/d;->a(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/k;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/k;Ljava/io/File;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/opensdk/a/e;,
            Lcom/xiaomi/opensdk/a/b;,
            Lcom/xiaomi/opensdk/a/a;
        }
    .end annotation

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    if-eqz p2, :cond_4f

    if-eqz p3, :cond_4f

    if-eqz p4, :cond_4f

    .line 162
    :try_start_c
    invoke-interface {p3, p1, p2}, Lcom/xiaomi/opensdk/pdc/k;->a(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/b;)Lcom/xiaomi/opensdk/pdc/asset/e;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/e;->e()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 171
    iget-object p2, p0, Lcom/xiaomi/opensdk/pdc/asset/d;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p2

    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/asset/e;->a:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lcom/xiaomi/opensdk/file/a/c;->c(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/file/a/b;

    move-result-object p1

    .line 172
    iget-object p2, p0, Lcom/xiaomi/opensdk/pdc/asset/d;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/opensdk/file/a/c;->a(Landroid/content/Context;)Lcom/xiaomi/opensdk/file/a/c;

    move-result-object p2

    invoke-virtual {p2, p4, p1, p5, p6}, Lcom/xiaomi/opensdk/file/a/c;->a(Ljava/io/File;Lcom/xiaomi/opensdk/file/a/b;Lcom/xiaomi/opensdk/file/a/d;Lcom/xiaomi/opensdk/file/a/e;)V

    goto :goto_4e

    .line 165
    :cond_2c
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/c;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/e;->i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v2

    iget v3, p1, Lcom/xiaomi/opensdk/pdc/asset/e;->b:I

    .line 167
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/e;->j()Z

    move-result v4

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/asset/e;->h()J

    move-result-wide v5

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/c;-><init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V

    throw p2
    :try_end_45
    .catch Lcom/xiaomi/opensdk/pdc/asset/c; {:try_start_c .. :try_end_45} :catch_4a
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_45} :catch_45

    :catch_45
    move-exception p1

    .line 176
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/d;->a(Ljava/lang/Exception;)V

    goto :goto_4e

    :catch_4a
    move-exception p1

    .line 174
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/asset/d;->a(Ljava/lang/Exception;)V

    :goto_4e
    return-void

    .line 158
    :cond_4f
    new-instance p1, Lcom/xiaomi/opensdk/a/e;

    const-string p2, "\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u53c2\u8003API\u6587\u6863"

    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/a/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method
