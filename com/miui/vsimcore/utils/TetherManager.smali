.class public Lcom/miui/vsimcore/utils/TetherManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vsimcore/utils/TetherManager$Holder;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "VSC-TetherManager"


# instance fields
.field public a:Landroid/net/ConnectivityManager;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/miui/vsimcore/utils/TetherManager;->c:Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/base/VsimCoreApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/miui/vsimcore/utils/TetherManager;->a:Landroid/net/ConnectivityManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/vsimcore/utils/TetherManager$1;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/miui/vsimcore/utils/TetherManager;-><init>()V

    return-void
.end method

.method public static a()Lcom/miui/vsimcore/utils/TetherManager;
    .registers 1

    .line 30
    sget-object v0, Lcom/miui/vsimcore/utils/TetherManager$Holder;->a:Lcom/miui/vsimcore/utils/TetherManager;

    return-object v0
.end method

.method private a(Landroid/net/ConnectivityManager;)V
    .registers 4

    const-string v0, "mService"

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 156
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_25

    const/4 v1, 0x1

    .line 163
    :try_start_13
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/vsimcore/utils/TetherManager;->c:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception p1

    const-string v0, "VSC-TetherManager"

    const-string v1, " getClsClazz() -> mService.get(cm) -> Exception: "

    .line 166
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    :goto_25
    return-void
.end method

.method private a(Landroid/net/ConnectivityManager;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 89
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 90
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_15} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_16

    goto :goto_23

    :catch_16
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    new-array p1, v0, [Ljava/lang/String;

    goto :goto_23

    :catch_1d
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 93
    new-array p1, v0, [Ljava/lang/String;

    :goto_23
    return-object p1
.end method


# virtual methods
.method public a(I)V
    .registers 11

    const-string v0, "VSC-TetherManager"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startTethering -> type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 0-WIFI, 1-USB, 2-Bluetooth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/miui/vsimcore/utils/TetherManager;->c:Ljava/lang/Object;

    if-nez v0, :cond_24

    .line 109
    iget-object v0, p0, Lcom/miui/vsimcore/utils/TetherManager;->a:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/miui/vsimcore/utils/TetherManager;->a(Landroid/net/ConnectivityManager;)V

    .line 111
    :cond_24
    iget-object v0, p0, Lcom/miui/vsimcore/utils/TetherManager;->c:Ljava/lang/Object;

    if-eqz v0, :cond_7e

    .line 113
    :try_start_28
    iget-object v0, p0, Lcom/miui/vsimcore/utils/TetherManager;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startTethering"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/ResultReceiver;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/miui/vsimcore/utils/TetherManager;->c:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    const/4 p1, 0x0

    aput-object p1, v2, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/vsimcore/base/VsimCoreApp;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_28 .. :try_end_6b} :catch_75
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_6b} :catch_6c

    goto :goto_85

    :catch_6c
    move-exception p1

    const-string v0, "VSC-TetherManager"

    const-string v1, "startTethering getMethod() -> Exception: "

    .line 121
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    :catch_75
    move-exception p1

    const-string v0, "VSC-TetherManager"

    const-string v1, "startTethering getMethod() -> NoSuchMethodException: "

    .line 118
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    :cond_7e
    const-string p1, "VSC-TetherManager"

    const-string v0, " startTethering() -> mConnectivityServiceClazzInstance is NULL "

    .line 124
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    return-void
.end method

.method public b()Landroid/os/Bundle;
    .registers 15

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "wifi_enable"

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "usb_enable"

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "bluetooth_enable"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    iget-object v1, p0, Lcom/miui/vsimcore/utils/TetherManager;->a:Landroid/net/ConnectivityManager;

    const-string v3, "getTetheredIfaces"

    invoke-direct {p0, v1, v3}, Lcom/miui/vsimcore/utils/TetherManager;->a(Landroid/net/ConnectivityManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v3, p0, Lcom/miui/vsimcore/utils/TetherManager;->a:Landroid/net/ConnectivityManager;

    const-string v4, "getTetherableUsbRegexs"

    invoke-direct {p0, v3, v4}, Lcom/miui/vsimcore/utils/TetherManager;->a(Landroid/net/ConnectivityManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 49
    iget-object v4, p0, Lcom/miui/vsimcore/utils/TetherManager;->a:Landroid/net/ConnectivityManager;

    const-string v5, "getTetherableWifiRegexs"

    invoke-direct {p0, v4, v5}, Lcom/miui/vsimcore/utils/TetherManager;->a(Landroid/net/ConnectivityManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 50
    iget-object v5, p0, Lcom/miui/vsimcore/utils/TetherManager;->a:Landroid/net/ConnectivityManager;

    const-string v6, "getTetherableBluetoothRegexs"

    invoke-direct {p0, v5, v6}, Lcom/miui/vsimcore/utils/TetherManager;->a(Landroid/net/ConnectivityManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 51
    array-length v6, v1

    const/4 v7, 0x0

    :goto_37
    if-ge v7, v6, :cond_93

    aget-object v8, v1, v7

    .line 52
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_90

    .line 53
    array-length v9, v3

    const/4 v10, 0x0

    :goto_43
    const/4 v11, 0x1

    if-ge v10, v9, :cond_5c

    aget-object v12, v3, v10

    .line 54
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_59

    .line 55
    invoke-virtual {v8, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_59

    const-string v12, "usb_enable"

    .line 56
    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_59
    add-int/lit8 v10, v10, 0x1

    goto :goto_43

    .line 60
    :cond_5c
    array-length v9, v4

    const/4 v10, 0x0

    :goto_5e
    if-ge v10, v9, :cond_76

    aget-object v12, v4, v10

    .line 61
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_73

    .line 62
    invoke-virtual {v8, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_73

    const-string v12, "wifi_enable"

    .line 63
    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_73
    add-int/lit8 v10, v10, 0x1

    goto :goto_5e

    .line 67
    :cond_76
    array-length v9, v5

    const/4 v10, 0x0

    :goto_78
    if-ge v10, v9, :cond_90

    aget-object v12, v5, v10

    .line 68
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8d

    .line 69
    invoke-virtual {v8, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8d

    const-string v12, "bluetooth_enable"

    .line 70
    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8d
    add-int/lit8 v10, v10, 0x1

    goto :goto_78

    :cond_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_93
    return-object v0
.end method

.method public b(I)V
    .registers 9

    const-string v0, "VSC-TetherManager"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " stopTethering -> type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 0-WIFI, 1-USB, 2-Bluetooth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/miui/vsimcore/utils/TetherManager;->c:Ljava/lang/Object;

    if-nez v0, :cond_24

    .line 132
    iget-object v0, p0, Lcom/miui/vsimcore/utils/TetherManager;->a:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/miui/vsimcore/utils/TetherManager;->a(Landroid/net/ConnectivityManager;)V

    .line 134
    :cond_24
    iget-object v0, p0, Lcom/miui/vsimcore/utils/TetherManager;->c:Ljava/lang/Object;

    if-eqz v0, :cond_6b

    .line 136
    :try_start_28
    iget-object v0, p0, Lcom/miui/vsimcore/utils/TetherManager;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "stopTethering"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/miui/vsimcore/utils/TetherManager;->c:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/vsimcore/base/VsimCoreApp;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_28 .. :try_end_58} :catch_62
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_58} :catch_59

    goto :goto_72

    :catch_59
    move-exception p1

    const-string v0, "VSC-TetherManager"

    const-string v1, " getMethod() -> Exception: "

    .line 143
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    :catch_62
    move-exception p1

    const-string v0, "VSC-TetherManager"

    const-string v1, " getMethod() -> NoSuchMethodException: "

    .line 140
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    :cond_6b
    const-string p1, "VSC-TetherManager"

    const-string v0, " stopTethering() -> mConnectivityServiceClazzInstance is NULL "

    .line 146
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_72
    return-void
.end method
