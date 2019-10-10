.class public Lcom/xiaomi/mistatistic/sdk/controller/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 75
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    const-string p1, "log getMessage exception :"

    .line 77
    invoke-static {p1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()V
    .registers 1

    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    return-void
.end method

.method private static a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 45
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    packed-switch p0, :pswitch_data_1c

    goto :goto_1b

    .line 60
    :pswitch_8
    invoke-static {p2, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 57
    :pswitch_c
    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 54
    :pswitch_10
    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 51
    :pswitch_14
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 48
    :pswitch_18
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method private static varargs a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 23
    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-static {p3, p4}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    packed-switch p0, :pswitch_data_20

    goto :goto_1f

    .line 39
    :pswitch_c
    invoke-static {p2, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 36
    :pswitch_10
    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 33
    :pswitch_14
    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 30
    :pswitch_18
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 27
    :pswitch_1c
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .line 102
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 103
    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 96
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 97
    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 121
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 122
    invoke-static {v0, p2, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 90
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 91
    invoke-static {v0, v1, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 127
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-static {v0, p1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    .line 152
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 153
    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 146
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 147
    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 196
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 197
    invoke-static {v0, p2, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 140
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 141
    invoke-static {v0, v1, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    .line 177
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 178
    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 171
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 172
    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    .line 208
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-static {v0, v1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 202
    sget-boolean p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Z

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 203
    invoke-static {p0, v0, v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MI_STAT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "MI_STAT"

    return-object p0

    .line 69
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MI_STAT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
