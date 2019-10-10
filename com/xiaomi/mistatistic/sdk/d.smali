.class public Lcom/xiaomi/mistatistic/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static c:Ljava/lang/Boolean; = null

.field private static d:Z = true

.field private static e:J = 0xea60L

.field private static f:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .registers 2

    .line 25
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 26
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 29
    :cond_e
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/d;->a:Z

    return-void
.end method

.method public static a()Z
    .registers 1

    .line 33
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/d;->a:Z

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 7

    .line 57
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/d;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDisabled false, sRespectUEP "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/d;->d:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;)V

    return v1

    .line 61
    :cond_1c
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/d;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2a

    sget-wide v2, Lcom/xiaomi/mistatistic/sdk/d;->f:J

    sget-wide v4, Lcom/xiaomi/mistatistic/sdk/d;->e:J

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 62
    :cond_2a
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 63
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/d;->b(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/d;->c:Ljava/lang/Boolean;

    goto :goto_4e

    .line 65
    :cond_43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/d;->c:Ljava/lang/Boolean;

    const-string p0, "isDisabled false, not miui app or OS "

    .line 66
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;)V

    .line 68
    :goto_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/d;->f:J

    .line 70
    :cond_54
    sget-object p0, Lcom/xiaomi/mistatistic/sdk/d;->c:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b()V
    .registers 2

    .line 37
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/d;->b:Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "android.provider.MiuiSettings$Secure"

    .line 78
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isUserExperienceProgramEnable"

    .line 79
    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 81
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_34

    :catch_2b
    move-exception p0

    const-string v1, "BS"

    const-string v2, "isUserExperienceProgramEnable exception:"

    .line 83
    invoke-static {v1, v2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    .line 85
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UEP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;)V

    return p0
.end method

.method public static c()Z
    .registers 1

    .line 45
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/d;->b:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 7

    .line 90
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const-string p0, "MI_STAT"

    const-string v0, "The statistics is disabled."

    .line 91
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    :try_start_f
    const-string v0, "android.provider.MiuiSettings$Secure"

    .line 96
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isUploadDebugLogEnable"

    .line 97
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 99
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_38} :catch_4f

    .line 100
    :try_start_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUploadDebugLogEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4c} :catch_4d

    goto :goto_58

    :catch_4d
    move-exception v0

    goto :goto_51

    :catch_4f
    move-exception v0

    const/4 p0, 0x1

    :goto_51
    const-string v1, "BS"

    const-string v2, "isUploadDebugLogEnable exception:"

    .line 102
    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_58
    return p0
.end method

.method public static d()V
    .registers 2

    .line 108
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "MI_STAT"

    const-string v1, "The statistics is disabled."

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 112
    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/d;->d:Z

    return-void
.end method

.method public static e()Z
    .registers 3

    const/4 v0, 0x0

    .line 118
    :try_start_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    .line 119
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "miui.os.Build"

    .line 120
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_CTA_BUILD"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    move v0, v1

    :catch_23
    :cond_23
    return v0
.end method

.method public static f()Z
    .registers 2

    :try_start_0
    const-string v0, "miui.os.Build"

    .line 171
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_INTERNATIONAL_BUILD"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 171
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return v0

    :catch_18
    const/4 v0, 0x0

    return v0
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    .line 180
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "S"

    return-object v0

    .line 182
    :cond_9
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "D"

    return-object v0

    .line 184
    :cond_12
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "A"

    return-object v0

    :cond_1b
    const-string v0, ""

    return-object v0
.end method

.method private static h()Z
    .registers 3

    const/4 v0, 0x0

    .line 132
    :try_start_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    const-string v1, "miui.os.Build"

    .line 134
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_ALPHA_BUILD"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 135
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_28

    .line 136
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    return v1

    :catch_28
    :cond_28
    return v0
.end method

.method private static i()Z
    .registers 3

    const/4 v0, 0x0

    .line 145
    :try_start_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    .line 146
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    const-string v1, "miui.os.Build"

    .line 147
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_DEVELOPMENT_VERSION"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_28

    .line 149
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    return v1

    :catch_28
    :cond_28
    return v0
.end method

.method private static j()Z
    .registers 3

    const/4 v0, 0x0

    .line 158
    :try_start_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v1

    .line 159
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    const-string v1, "miui.os.Build"

    .line 160
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_STABLE_VERSION"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 161
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_28

    .line 162
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    return v1

    :catch_28
    :cond_28
    return v0
.end method
