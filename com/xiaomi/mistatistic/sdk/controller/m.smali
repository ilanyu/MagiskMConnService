.class public Lcom/xiaomi/mistatistic/sdk/controller/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    if-nez p0, :cond_1d

    const-string p0, "PPU"

    .line 23
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Context is null, getInt return default value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 27
    :cond_1d
    :try_start_1d
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 28
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_2b

    return p0

    :catch_2b
    move-exception p0

    const-string p1, "PPU"

    const-string v0, "getInt exception"

    .line 30
    invoke-static {p1, v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 6

    if-nez p0, :cond_1d

    const-string p0, "PPU"

    .line 38
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Context is null, getLong return default value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2

    .line 42
    :cond_1d
    :try_start_1d
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 43
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_2b

    return-wide p0

    :catch_2b
    move-exception p0

    const-string p1, "PPU"

    const-string v0, "getLong exception"

    .line 45
    invoke-static {p1, v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide p2
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 205
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 206
    sget-object p0, Lcom/xiaomi/mistatistic/sdk/controller/m;->a:Ljava/lang/String;

    return-object p0

    :cond_b
    if-nez p0, :cond_1b

    const-string p0, "PPU"

    .line 209
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Context is null, getPrefName return a empty string "

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 212
    :cond_1b
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "mistat"

    .line 214
    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/m;->a:Ljava/lang/String;

    goto :goto_45

    .line 216
    :cond_2e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mistat"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/m;->a:Ljava/lang/String;

    .line 218
    :goto_45
    sget-object p0, Lcom/xiaomi/mistatistic/sdk/controller/m;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_1d

    const-string p0, "PPU"

    .line 53
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Context is null, getString return default value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 57
    :cond_1d
    :try_start_1d
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 58
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception p0

    const-string p1, "PPU"

    const-string v0, "getString exception"

    .line 60
    invoke-static {p1, v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .registers 1

    .line 171
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_f

    const-string p0, "PPU"

    .line 82
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Context is null, getBoolean return default value: false."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 86
    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 87
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    const-string p1, "PPU"

    const-string v1, "getBoolean exception"

    .line 89
    invoke-static {p1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    if-nez p0, :cond_e

    const-string p0, "PPU"

    .line 68
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Context is null, getBoolean return default value: defaultValue."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 72
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 73
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    const-string p1, "PPU"

    const-string v0, "getBoolean exception"

    .line 75
    invoke-static {p1, v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_e

    const-string p0, "PPU"

    .line 235
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Context is null, clear do nothing."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 240
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception p0

    const-string v0, "PPU"

    const-string v1, "clear exception"

    .line 242
    invoke-static {v0, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    if-nez p0, :cond_e

    const-string p0, "PPU"

    .line 96
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Context is null, putInt do nothing."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 101
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 102
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception p0

    const-string p1, "PPU"

    const-string p2, "putInt exception"

    .line 105
    invoke-static {p1, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    if-nez p0, :cond_e

    const-string p0, "PPU"

    .line 111
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Context is null, putLong do nothing."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 116
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 117
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception p0

    const-string p1, "PPU"

    const-string p2, "putLong exception"

    .line 120
    invoke-static {p1, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_e

    const-string p0, "PPU"

    .line 126
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Context is null, putString do nothing."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 131
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 132
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception p0

    const-string p1, "PPU"

    const-string p2, "putString exception"

    .line 135
    invoke-static {p1, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    if-nez p0, :cond_e

    const-string p0, "PPU"

    .line 141
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Context is null, putBoolean do nothing."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 147
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception p0

    const-string p1, "PPU"

    const-string p2, "putBoolean exception"

    .line 150
    invoke-static {p1, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_f

    const-string p0, "PPU"

    .line 156
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Context is null, contains return default value: false."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 160
    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 161
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    const-string p1, "PPU"

    const-string v1, "contains exception"

    .line 163
    invoke-static {p1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "activity"

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 223
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 224
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 225
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_16

    .line 226
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_2d
    const-string p0, ""

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_f

    const-string p0, "PPU"

    .line 176
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Context is null, hasKey return default value: false."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 180
    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 181
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    const-string p1, "PPU"

    const-string v1, "hasKey exception"

    .line 183
    invoke-static {p1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_f

    const-string p0, "PPU"

    .line 191
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Context is null, removeKey return default value: false."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 195
    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 196
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_24

    return p0

    :catch_24
    move-exception p0

    const-string p1, "PPU"

    const-string v1, "removeKey exception"

    .line 198
    invoke-static {p1, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
