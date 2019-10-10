.class public Lmiui/cloud/common/XDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;,
        Lmiui/cloud/common/XDeviceInfo$KeyStoreType;,
        Lmiui/cloud/common/XDeviceInfo$PhoneType;
    }
.end annotation


# static fields
.field private static final h:I = 0xea60

.field private static final i:J = 0x2bf20L

.field private static j:J = -0x1L

.field private static k:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

.field private static l:Lmiui/cloud/common/XDeviceInfo;


# instance fields
.field public final a:Lmiui/cloud/common/XDeviceInfo$PhoneType;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "leo"

    .line 202
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "andromeda"

    .line 203
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "hennessy"

    .line 204
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "libra"

    .line 205
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "aqua"

    .line 206
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "gemini"

    .line 207
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "gold"

    .line 208
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "vela"

    .line 209
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "kenzo"

    .line 210
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "grus"

    .line 211
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ido"

    .line 212
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "hydrogen"

    .line 213
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "helium"

    .line 214
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "kate"

    .line 215
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "land"

    .line 216
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "lavender"

    .line 217
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "markw"

    .line 218
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "nikel"

    .line 219
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "omega"

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cepheus"

    .line 221
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "capricorn"

    .line 222
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "prada"

    .line 223
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "lithium"

    .line 224
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "scorpio"

    .line 225
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "natrium"

    .line 226
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "rolex"

    .line 227
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "mido"

    .line 228
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "santoni"

    .line 229
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "sagit"

    .line 230
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "centaur"

    .line 231
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "oxygen"

    .line 232
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "tiffany"

    .line 233
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ulysse"

    .line 234
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ugglite"

    .line 235
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "chiron"

    .line 236
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ugg"

    .line 237
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "jason"

    .line 238
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "riva"

    .line 239
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "vince"

    .line 240
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "rosy"

    .line 241
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "meri"

    .line 242
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "davinci"

    .line 243
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "pine"

    .line 244
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "whyred"

    .line 245
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "dipper"

    .line 246
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "onc"

    .line 247
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "polaris"

    .line 248
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "pyxis"

    .line 249
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ysl"

    .line 250
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "wayne"

    .line 251
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "nitrogen"

    .line 252
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "sirius"

    .line 253
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "sakura"

    .line 254
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "sakura_india"

    .line 255
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "beryllium"

    .line 256
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "violet"

    .line 257
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "raphael"

    .line 258
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cactus"

    .line 259
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cereus"

    .line 260
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "lotus"

    .line 261
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "clover"

    .line 262
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ursa"

    .line 263
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "tulip"

    .line 264
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "platina"

    .line 265
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "perseus"

    .line 266
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "equuleus"

    .line 267
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->a:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    goto :goto_160

    :cond_15e
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->b:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    :goto_160
    sput-object v0, Lmiui/cloud/common/XDeviceInfo;->k:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->b()I

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->a:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    goto :goto_e

    :cond_c
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->b:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    :goto_e
    iput-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->a:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 106
    invoke-static {p1}, Lmiui/cloud/common/XDeviceInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object v1, v0

    goto :goto_20

    .line 108
    :cond_1c
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_20
    iput-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->b:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->a:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    sget-object v2, Lmiui/cloud/common/XDeviceInfo$PhoneType;->b:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    if-ne v1, v2, :cond_29

    goto :goto_2b

    :cond_29
    const-string v0, ""

    :goto_2b
    iput-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->c:Ljava/lang/String;

    .line 111
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->d:Ljava/lang/String;

    .line 112
    invoke-direct {p0, p1}, Lmiui/cloud/common/XDeviceInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->e:Ljava/lang/String;

    .line 113
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->f:Ljava/lang/String;

    .line 114
    invoke-static {}, Lmiui/cloud/common/XDeviceInfo;->a()Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->g:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lmiui/cloud/common/XDeviceInfo;)V
    .registers 5

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iget-object v0, p2, Lmiui/cloud/common/XDeviceInfo;->a:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    iput-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->a:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 121
    invoke-static {p1}, Lmiui/cloud/common/XDeviceInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    goto :goto_17

    .line 123
    :cond_13
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    iput-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->b:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->a:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    sget-object v1, Lmiui/cloud/common/XDeviceInfo$PhoneType;->b:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    if-ne v0, v1, :cond_20

    goto :goto_22

    :cond_20
    const-string p1, ""

    :goto_22
    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->c:Ljava/lang/String;

    .line 126
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->d:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->d:Ljava/lang/String;

    .line 127
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->e:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->e:Ljava/lang/String;

    .line 128
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->f:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->f:Ljava/lang/String;

    .line 129
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->g:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->g:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-void
.end method

.method public static a()Lmiui/cloud/common/XDeviceInfo$KeyStoreType;
    .registers 1

    .line 275
    sget-object v0, Lmiui/cloud/common/XDeviceInfo;->k:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;
    .registers 4

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    .line 71
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 75
    sget-object v1, Lmiui/cloud/common/XDeviceInfo;->l:Lmiui/cloud/common/XDeviceInfo;

    if-nez v1, :cond_21

    .line 76
    new-instance v1, Lmiui/cloud/common/XDeviceInfo;

    invoke-direct {v1, p0}, Lmiui/cloud/common/XDeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/cloud/common/XDeviceInfo;->l:Lmiui/cloud/common/XDeviceInfo;

    goto :goto_2a

    .line 78
    :cond_21
    new-instance v1, Lmiui/cloud/common/XDeviceInfo;

    sget-object v2, Lmiui/cloud/common/XDeviceInfo;->l:Lmiui/cloud/common/XDeviceInfo;

    invoke-direct {v1, p0, v2}, Lmiui/cloud/common/XDeviceInfo;-><init>(Landroid/content/Context;Lmiui/cloud/common/XDeviceInfo;)V

    sput-object v1, Lmiui/cloud/common/XDeviceInfo;->l:Lmiui/cloud/common/XDeviceInfo;

    .line 81
    :goto_2a
    sget-object p0, Lmiui/cloud/common/XDeviceInfo;->l:Lmiui/cloud/common/XDeviceInfo;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_36

    monitor-exit v0

    return-object p0

    .line 72
    :cond_2e
    :try_start_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "syncGet can not be called in the main thread. "

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 70
    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Lmiui/cloud/common/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lmiui/cloud/common/c<",
            "Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;",
            ">;)V"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/cloud/common/XDeviceInfo$1;

    invoke-direct {v1, p1, p0}, Lmiui/cloud/common/XDeviceInfo$1;-><init>(Lmiui/cloud/common/c;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    .line 176
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 178
    sget-wide v3, Lmiui/cloud/common/XDeviceInfo;->j:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1f

    sget-wide v3, Lmiui/cloud/common/XDeviceInfo;->j:J

    const/4 v7, 0x0

    sub-long v3, v1, v3

    const-wide/32 v7, 0x2bf20

    cmp-long v3, v3, v7

    if-gez v3, :cond_1f

    const-string p0, ""
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_44

    .line 180
    monitor-exit v0

    return-object p0

    :cond_1f
    const/4 v3, 0x0

    const-wide/32 v7, 0xea60

    .line 185
    :try_start_23
    invoke-static {p0, v7, v8}, Lmiui/telephony/CloudTelephonyManager;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_23 .. :try_end_27} :catch_28
    .catchall {:try_start_23 .. :try_end_27} :catchall_44

    goto :goto_34

    :catch_28
    const/4 p0, 0x1

    .line 187
    :try_start_29
    new-array p0, p0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v7, "Failed to get the device id."

    aput-object v7, p0, v4

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V

    move-object p0, v3

    .line 190
    :goto_34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 191
    sput-wide v1, Lmiui/cloud/common/XDeviceInfo;->j:J

    const-string p0, ""
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_44

    .line 192
    monitor-exit v0

    return-object p0

    .line 195
    :cond_40
    :try_start_40
    sput-wide v5, Lmiui/cloud/common/XDeviceInfo;->j:J
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_44

    .line 196
    monitor-exit v0

    return-object p0

    :catchall_44
    move-exception p0

    .line 175
    monitor-exit v0

    throw p0
.end method

.method public static b()Z
    .registers 2

    .line 284
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scorpio"

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 139
    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 138
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 140
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 141
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_22

    goto :goto_f

    .line 145
    :cond_22
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "wlan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5
    :try_end_2c
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_2c} :catch_8a

    const/4 v6, -0x1

    if-ne v5, v6, :cond_30

    goto :goto_f

    .line 150
    :cond_30
    :try_start_30
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3
    :try_end_34
    .catch Ljava/net/SocketException; {:try_start_30 .. :try_end_34} :catch_69

    if-nez v3, :cond_37

    goto :goto_f

    .line 158
    :cond_37
    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 159
    :goto_3d
    array-length v5, v3

    if-ge v4, v5, :cond_56

    const-string v5, "%02X:"

    .line 160
    new-array v6, v1, [Ljava/lang/Object;

    aget-byte v7, v3, v4

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 161
    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_64

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 163
    :cond_64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_69
    move-exception v3

    .line 152
    new-array v5, p1, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get MAC for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", continue. "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    aput-object v3, v5, v1

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->a([Ljava/lang/Object;)V
    :try_end_89
    .catch Ljava/net/SocketException; {:try_start_37 .. :try_end_89} :catch_8a

    goto :goto_f

    :catch_8a
    move-exception v2

    .line 166
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "Failed to get MAC. "

    aput-object v3, p1, v0

    aput-object v2, p1, v1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->a([Ljava/lang/Object;)V

    :cond_96
    const-string p1, "N/A"

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "type: %s, deviceid: %s, IMEM: %s, SN: %s, MAC: %s, model: %s, keyStoreType: %s"

    const/4 v1, 0x7

    .line 97
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmiui/cloud/common/XDeviceInfo;->a:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 98
    invoke-virtual {v2}, Lmiui/cloud/common/XDeviceInfo$PhoneType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/cloud/common/XDeviceInfo;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/cloud/common/XDeviceInfo;->c:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/cloud/common/XDeviceInfo;->d:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/cloud/common/XDeviceInfo;->e:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/cloud/common/XDeviceInfo;->f:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/cloud/common/XDeviceInfo;->g:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 97
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
