.class public Lcom/miui/vsimcore/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "VSC-CommonUtil"

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:I = 0x400

.field private static g:I = 0x100000


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Z
    .registers 2

    const-string v0, "gemini"

    .line 598
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static B()Z
    .registers 2

    const-string v0, "gold"

    .line 602
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static C()Z
    .registers 2

    const-string v0, "hydrogen"

    .line 606
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static D()Z
    .registers 2

    const-string v0, "markw"

    .line 610
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static E()Z
    .registers 2

    const-string v0, "scorpio"

    .line 614
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static F()Z
    .registers 2

    const-string v0, "helium"

    .line 618
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static G()Z
    .registers 2

    const-string v0, "capricorn"

    .line 622
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static H()Z
    .registers 2

    const-string v0, "lithium"

    .line 626
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static I()Z
    .registers 2

    const-string v0, "land"

    .line 630
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static J()Z
    .registers 2

    const-string v0, "santoni"

    .line 634
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static K()Z
    .registers 2

    const-string v0, "natrium"

    .line 638
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static L()Z
    .registers 2

    const-string v0, "ido"

    .line 642
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static M()Z
    .registers 2

    const-string v0, "aqua"

    .line 646
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static N()Z
    .registers 2

    const-string v0, "kenzo"

    .line 650
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static O()Z
    .registers 2

    const-string v0, "hermes"

    .line 654
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static P()Z
    .registers 2

    const-string v0, "hennessy"

    .line 658
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static Q()Z
    .registers 2

    const-string v0, "omega"

    .line 662
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static R()Z
    .registers 2

    const-string v0, "nikel"

    .line 666
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static S()Z
    .registers 2

    const-string v0, "sagit"

    .line 670
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static T()Z
    .registers 2

    const-string v0, "centaur"

    .line 674
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static U()Z
    .registers 2

    const-string v0, "achilles"

    .line 678
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static V()Z
    .registers 2

    const-string v0, "cactus"

    .line 682
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static W()Z
    .registers 2

    const-string v0, "cereus"

    .line 686
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static X()Z
    .registers 2

    const-string v0, "prada"

    .line 689
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static Y()Z
    .registers 2

    const-string v0, "rolex"

    .line 693
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static Z()Z
    .registers 2

    const-string v0, "mido"

    .line 697
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)J
    .registers 7

    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_a4

    const/4 v0, 0x0

    .line 105
    :try_start_9
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_45
    .catchall {:try_start_9 .. :try_end_10} :catchall_43

    .line 107
    :try_start_10
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_40
    .catchall {:try_start_10 .. :try_end_1c} :catchall_3d

    .line 118
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_3b

    :catch_20
    move-exception p0

    const-string v0, "VSC-CommonUtil"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLongFromFile -> close IO, IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    move-wide v1, v4

    goto :goto_a4

    :catchall_3d
    move-exception p0

    move-object v0, v3

    goto :goto_82

    :catch_40
    move-exception p0

    move-object v0, v3

    goto :goto_46

    :catchall_43
    move-exception p0

    goto :goto_82

    :catch_45
    move-exception p0

    :goto_46
    :try_start_46
    const-string v3, "VSC-CommonUtil"

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readLongFromFile -> Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_46 .. :try_end_60} :catchall_43

    if-eqz v0, :cond_a4

    .line 118
    :try_start_62
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_a4

    :catch_66
    move-exception p0

    const-string v0, "VSC-CommonUtil"

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readLongFromFile -> close IO, IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    :goto_82
    if-eqz v0, :cond_a3

    .line 118
    :try_start_84
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_a3

    :catch_88
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLongFromFile -> close IO, IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VSC-CommonUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_a3
    :goto_a3
    throw p0

    :cond_a4
    :goto_a4
    return-wide v1
.end method

.method public static a(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 520
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "slotId"

    .line 521
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "content://vsimcore.modem"

    .line 522
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 523
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "card_info_bility"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    .line 542
    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    .line 543
    invoke-virtual {v0, p0}, Lmiui/telephony/TelephonyManager;->getSubscriberIdForSlot(I)Ljava/lang/String;

    move-result-object p0

    .line 544
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_f

    if-nez v0, :cond_16

    return-object p0

    :catch_f
    const-string p0, "VSC-CommonUtil"

    const-string v0, "cannot get imsi"

    .line 548
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const-string p0, ""

    return-object p0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 10

    long-to-float p0, p0

    const/high16 p1, 0x44800000    # 1024.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    const-string v0, ""

    const-string v1, ""

    .line 377
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.0#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 378
    sget v3, Lcom/miui/vsimcore/utils/c;->g:I

    int-to-double v3, v3

    cmpl-double v3, p0, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-ltz v3, :cond_2f

    mul-double p0, p0, v4

    .line 380
    sget v0, Lcom/miui/vsimcore/utils/c;->g:I

    int-to-double v0, v0

    div-double/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object p0

    const p1, 0x7f0b0024

    invoke-virtual {p0, p1}, Lcom/miui/vsimcore/base/VsimCoreApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 382
    :cond_2f
    sget v3, Lcom/miui/vsimcore/utils/c;->f:I

    int-to-double v6, v3

    cmpg-double v3, v6, p0

    if-gtz v3, :cond_53

    sget v3, Lcom/miui/vsimcore/utils/c;->g:I

    int-to-double v6, v3

    cmpg-double v3, p0, v6

    if-gez v3, :cond_53

    mul-double p0, p0, v4

    .line 384
    sget v0, Lcom/miui/vsimcore/utils/c;->f:I

    int-to-double v0, v0

    div-double/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object p0

    const p1, 0x7f0b0026

    invoke-virtual {p0, p1}, Lcom/miui/vsimcore/base/VsimCoreApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 386
    :cond_53
    sget v3, Lcom/miui/vsimcore/utils/c;->f:I

    int-to-double v3, v3

    cmpg-double v3, p0, v3

    if-gez v3, :cond_69

    .line 388
    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object p0

    const p1, 0x7f0b0025

    invoke-virtual {p0, p1}, Lcom/miui/vsimcore/base/VsimCoreApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    :cond_69
    :goto_69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move/from16 v0, p0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    :try_start_9
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_e7
    .catchall {:try_start_9 .. :try_end_15} :catchall_e4

    .line 143
    :try_start_15
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_e1
    .catchall {:try_start_15 .. :try_end_18} :catchall_df

    const/4 v3, 0x1

    .line 145
    :goto_19
    :try_start_19
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 146
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_db
    .catchall {:try_start_19 .. :try_end_23} :catchall_df

    add-int/lit8 v3, v2, 0x1

    if-eq v5, v3, :cond_4c

    :try_start_27
    const-string v0, "VSC-CommonUtil"

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inconsistent idx="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " after lastIdx="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_45} :catch_49
    .catchall {:try_start_27 .. :try_end_45} :catchall_df

    .line 179
    invoke-static {v4}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catch_49
    move-exception v0

    goto/16 :goto_dd

    .line 153
    :cond_4c
    :try_start_4c
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/vsimcore/utils/c;->b(Ljava/lang/String;)I

    move-result v3

    .line 155
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v6

    if-ne v6, v0, :cond_c4

    .line 157
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v6

    .line 158
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    .line 159
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v9

    .line 160
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v11

    .line 161
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v13

    .line 162
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_7a} :catch_d3
    .catchall {:try_start_4c .. :try_end_7a} :catchall_df

    move/from16 v16, v5

    :try_start_7c
    const-string v5, " "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    :cond_c4
    move/from16 v16, v5

    .line 174
    :goto_c6
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_c9} :catch_ce
    .catchall {:try_start_7c .. :try_end_c9} :catchall_df

    move/from16 v2, v16

    move v3, v2

    goto/16 :goto_19

    :catch_ce
    move-exception v0

    move-object v3, v4

    move/from16 v5, v16

    goto :goto_e9

    :catch_d3
    move-exception v0

    move/from16 v16, v5

    goto :goto_dd

    .line 179
    :cond_d7
    invoke-static {v4}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_102

    :catch_db
    move-exception v0

    move v5, v3

    :goto_dd
    move-object v3, v4

    goto :goto_e9

    :catchall_df
    move-exception v0

    goto :goto_103

    :catch_e1
    move-exception v0

    move-object v3, v4

    goto :goto_e8

    :catchall_e4
    move-exception v0

    move-object v4, v3

    goto :goto_103

    :catch_e7
    move-exception v0

    :goto_e8
    const/4 v5, 0x1

    :goto_e9
    :try_start_e9
    const-string v2, "VSC-CommonUtil"

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "problem parsing idx "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ff
    .catchall {:try_start_e9 .. :try_end_ff} :catchall_e4

    .line 179
    invoke-static {v3}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_102
    return-object v1

    :goto_103
    invoke-static {v4}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public static a(JJJLjava/lang/String;)V
    .registers 19

    move-object/from16 v0, p6

    .line 313
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 314
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 315
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 316
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 317
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v5

    const v6, 0x7f0b0027

    const/4 v7, 0x1

    .line 320
    :try_start_1e
    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/miui/vsimcore/utils/c;->a(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 323
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0028

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {p4 .. p5}, Lcom/miui/vsimcore/utils/c;->a(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "notiKey1"

    .line 324
    invoke-virtual {v3, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "notiKey2"

    .line 325
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "notiKey3"

    const v7, 0x7f0b002a

    .line 326
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "action"

    .line 328
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "iconUri"

    .line 329
    invoke-static {v5}, Lcom/miui/vsimcore/utils/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "title"

    const v8, 0x7f0b0022

    .line 331
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "content"

    move-wide v8, p2

    .line 332
    invoke-virtual {v6, v7, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 334
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 335
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "assistKey1"

    .line 337
    invoke-virtual {v4, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "title"

    const v9, 0x7f0b0023

    .line 338
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "content"

    move-wide v9, p0

    .line 339
    invoke-virtual {v7, v6, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "assistKey2"

    .line 340
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "title"

    const v7, 0x7f0b0021

    .line 343
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "content"

    move-wide/from16 v6, p4

    .line 344
    invoke-virtual {v8, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "assistCenter"

    .line 346
    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "action"

    .line 348
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "notiInfo"

    .line 349
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "assistInfo"

    .line 350
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    .line 351
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vsim_server_flow_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_dc
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_dc} :catch_dd

    goto :goto_e1

    :catch_dd
    move-exception v0

    .line 355
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_e1
    return-void
.end method

.method public static a(Z)V
    .registers 7

    const-string v0, "VSC-CommonUtil"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/miui/vsimcore/base/VsimCoreApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    .line 82
    :try_start_23
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setDataEnabled"

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p0

    const-string v0, "VSC-CommonUtil"

    const-string v1, "failed to setMobileDataState"

    .line 86
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    return-void
.end method

.method public static a()Z
    .registers 1

    .line 190
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 191
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.virtualsim"

    .line 58
    invoke-static {p0, v0}, Lcom/miui/vsimcore/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 66
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 68
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_14

    .line 70
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public static aA()Z
    .registers 2

    const-string v0, "sakura_india"

    .line 807
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static aB()Z
    .registers 2

    const-string v0, "equuleus"

    .line 810
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static aC()Z
    .registers 2

    const-string v0, "perseus"

    .line 813
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static aD()Z
    .registers 2

    const-string v0, "lotus"

    .line 816
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static aE()Z
    .registers 1

    .line 820
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->t()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->y()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->p()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->z()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->M()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->L()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method

.method private static aF()Z
    .registers 1

    .line 474
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->aE()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->O()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->P()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->Q()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->R()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->C()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->F()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->A()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->B()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 475
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->E()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->G()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->H()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->K()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->I()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->N()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->X()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->Y()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->Z()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->D()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 476
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->J()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->T()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->S()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->ad()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->ab()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->ac()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->U()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->aa()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->ae()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->af()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 477
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->ag()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->ah()Z

    move-result v0

    if-nez v0, :cond_c2

    invoke-static {}, Lcom/miui/vsimcore/utils/c;->aj()Z

    move-result v0

    if-nez v0, :cond_c2

    const/4 v0, 0x1

    goto :goto_c3

    :cond_c2
    const/4 v0, 0x0

    :goto_c3
    return v0
.end method

.method private static aG()Ljava/lang/String;
    .registers 1

    .line 481
    sget-object v0, Lcom/miui/vsimcore/utils/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 482
    sget-object v0, Lcom/miui/vsimcore/utils/c;->d:Ljava/lang/String;

    return-object v0

    .line 486
    :cond_b
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/vsimcore/utils/c;->d:Ljava/lang/String;

    .line 487
    sget-object v0, Lcom/miui/vsimcore/utils/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 488
    sget-object v0, Lcom/miui/vsimcore/utils/c;->d:Ljava/lang/String;

    return-object v0

    .line 492
    :cond_20
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->n()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/vsimcore/utils/c;->d:Ljava/lang/String;

    .line 493
    sget-object v0, Lcom/miui/vsimcore/utils/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/miui/vsimcore/utils/c;->d:Ljava/lang/String;

    goto :goto_33

    :cond_31
    const-string v0, ""

    :goto_33
    return-object v0
.end method

.method private static aH()Z
    .registers 3

    const-string v0, "clover"

    .line 784
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "d9p"

    const-string v1, "ro.board.variant"

    const-string v2, "d9"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public static aa()Z
    .registers 2

    const-string v0, "jason"

    .line 701
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ab()Z
    .registers 2

    const-string v0, "tiffany"

    .line 705
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ac()Z
    .registers 2

    const-string v0, "ulysse"

    .line 709
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ad()Z
    .registers 2

    const-string v0, "oxygen"

    .line 712
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ae()Z
    .registers 2

    const-string v0, "ugglite"

    .line 716
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static af()Z
    .registers 2

    const-string v0, "ugg"

    .line 720
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ag()Z
    .registers 2

    const-string v0, "riva"

    .line 724
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ah()Z
    .registers 2

    const-string v0, "chiron"

    .line 728
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ai()Z
    .registers 2

    const-string v0, "vince"

    .line 732
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static aj()Z
    .registers 2

    const-string v0, "rosy"

    .line 736
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ak()Z
    .registers 2

    const-string v0, "dipper"

    .line 740
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static al()Z
    .registers 2

    const-string v0, "polaris"

    .line 744
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static am()Z
    .registers 2

    const-string v0, "whyred"

    .line 748
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static an()Z
    .registers 2

    const-string v0, "nitrogen"

    .line 752
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ao()Z
    .registers 2

    const-string v0, "sirius"

    .line 756
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ap()Z
    .registers 2

    const-string v0, "ysl"

    .line 760
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static aq()Z
    .registers 2

    const-string v0, "wayne"

    .line 764
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ar()Z
    .registers 2

    const-string v0, "sakura"

    .line 768
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static as()Z
    .registers 2

    const-string v0, "beryllium"

    .line 772
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static at()Z
    .registers 2

    const-string v0, "clover"

    .line 776
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static au()Z
    .registers 3

    const-string v0, "clover"

    .line 780
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "d9"

    const-string v1, "ro.board.variant"

    const-string v2, "d9"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public static av()Z
    .registers 2

    const-string v0, "ursa"

    .line 788
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static aw()Z
    .registers 2

    const-string v0, "tulip"

    .line 792
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ax()Z
    .registers 2

    const-string v0, "comet"

    .line 796
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ay()Z
    .registers 2

    const-string v0, "lilium"

    .line 800
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static az()Z
    .registers 2

    const-string v0, "platina"

    .line 804
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    const/4 v1, -0x1

    .line 407
    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 409
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_f} :catch_11

    move v1, p0

    goto :goto_15

    :catch_11
    move-exception p0

    .line 412
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_15
    :goto_15
    return v1
.end method

.method public static b(Ljava/lang/String;)I
    .registers 4

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-le v0, v2, :cond_17

    add-int/lit8 v0, v0, -0x8

    .line 186
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v1

    :cond_17
    return v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 261
    sget-object v0, Lcom/miui/vsimcore/utils/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 262
    sget-object p0, Lcom/miui/vsimcore/utils/c;->b:Ljava/lang/String;

    return-object p0

    .line 264
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 266
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 268
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcom/miui/vsimcore/utils/c;->b:Ljava/lang/String;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p0

    .line 271
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 273
    :cond_24
    :goto_24
    sget-object p0, Lcom/miui/vsimcore/utils/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static b()Z
    .registers 2

    .line 195
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloudsim_sim_imsi"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 360
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "sec_files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "noti.png"

    const v2, 0x7f0a0002

    .line 362
    invoke-static {p0, v0, v1, v2}, Lcom/miui/vsimcore/utils/b;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    .line 364
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "com.miui.vsimcore.fileprovider"

    .line 365
    invoke-static {p0, v0, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui"

    const/4 v3, 0x1

    .line 367
    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-object v1
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    .line 205
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloudsim_sim_imsi"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static c()Z
    .registers 2

    .line 200
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->d()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "virtualsimcloudsim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    .line 209
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "third_virtualsim_appname"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    .line 213
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "third_virtualsim_appname"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static e()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "model"

    .line 218
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appVersion"

    .line 219
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/vsimcore/utils/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "miuiVersion"

    .line 220
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .registers 5

    const-string v0, "VSC-CommonUtil"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call provider method: notifyThirdApp, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :try_start_16
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/vsimcore/base/VsimCoreApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.xiaomi.mimobile.cloudsim.provider"

    .line 292
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 293
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "action"

    .line 294
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "notifyFinishBooting"

    const/4 v3, 0x0

    .line 295
    invoke-virtual {v0, v1, p0, v3, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_35

    goto :goto_3d

    :catch_35
    move-exception p0

    const-string v0, "VSC-CommonUtil"

    const-string v1, "notifyFinishBooting:"

    .line 297
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    return-void
.end method

.method public static f()Ljava/lang/String;
    .registers 2

    .line 225
    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MI 4LTE"

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 227
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->x()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, "MI 4LTE-CMCC"

    goto/16 :goto_84

    .line 229
    :cond_14
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->w()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v0, "MI 4LTE-CU"

    goto/16 :goto_84

    .line 231
    :cond_1e
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->v()Z

    move-result v1

    if-eqz v1, :cond_84

    const-string v0, "MI 4LTE-CT"

    goto :goto_84

    :cond_27
    const-string v1, "MI NOTE LTE"

    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 235
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->r()Z

    move-result v1

    if-eqz v1, :cond_84

    const-string v0, "MI NOTE LTE-ALL"

    goto :goto_84

    :cond_38
    const-string v1, "MI NOTE Pro"

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 239
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->q()Z

    move-result v1

    if-eqz v1, :cond_84

    const-string v0, "MI NOTE Pro-ALL"

    goto :goto_84

    :cond_49
    const-string v1, "MI MAX"

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 243
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->F()Z

    move-result v1

    if-eqz v1, :cond_84

    const-string v0, "MI MAX Pro"

    goto :goto_84

    :cond_5a
    const-string v1, "Redmi Note 3"

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 247
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->N()Z

    move-result v1

    if-eqz v1, :cond_84

    const-string v0, "Redmi Note 3-ALL"

    goto :goto_84

    :cond_6b
    const-string v1, "Redmi Note 4X"

    .line 250
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 251
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->Z()Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v0, "Redmi Note 4X-QC"

    goto :goto_84

    .line 253
    :cond_7c
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->R()Z

    move-result v1

    if-eqz v1, :cond_84

    const-string v0, "Redmi Note 4X-MTK"

    :cond_84
    :goto_84
    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    .line 282
    sget-object v0, Lcom/miui/vsimcore/utils/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 283
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/miui/vsimcore/utils/c;->c:Ljava/lang/String;

    .line 285
    :cond_c
    sget-object v0, Lcom/miui/vsimcore/utils/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static h()V
    .registers 2

    .line 302
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$VirtualSim;->setVirtualSimStatus(Landroid/content/Context;I)V

    .line 303
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$VirtualSim;->setVirtualSimImsi(Landroid/content/Context;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$VirtualSim;->setVirtualSimIccId(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$VirtualSim;->setVirtualSimType(Landroid/content/Context;I)V

    .line 306
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$VirtualSim;->setSupportNetworkType(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ""

    .line 307
    invoke-static {v0}, Lcom/miui/vsimcore/utils/c;->d(Ljava/lang/String;)V

    const-string v0, ""

    .line 308
    invoke-static {v0}, Lcom/miui/vsimcore/utils/c;->c(Ljava/lang/String;)V

    const-string v0, "VSC-CommonUtil"

    const-string v1, "clearVirtualSimSettingStatus"

    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i()Z
    .registers 2

    .line 395
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "mt[0-9]*"

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "VSC-CommonUtil"

    const-string v1, "MediaTek platform"

    .line 397
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    .line 418
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_7

    const-string v0, "Alpha"

    return-object v0

    .line 420
    :cond_7
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_e

    const-string v0, "Develop"

    return-object v0

    .line 422
    :cond_e
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_15

    const-string v0, "Stable"

    return-object v0

    :cond_15
    const-string v0, "Other"

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .registers 1

    .line 430
    invoke-static {}, Lmiui/util/Network;->getOperatorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lmiui/util/Network;->getOperatorType()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "other"

    :goto_11
    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    .line 434
    sget-object v0, Lcom/miui/vsimcore/utils/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 435
    sget-object v0, Lcom/miui/vsimcore/utils/c;->e:Ljava/lang/String;

    return-object v0

    .line 437
    :cond_b
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/vsimcore/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/vsimcore/utils/c;->e:Ljava/lang/String;

    .line 438
    sget-object v0, Lcom/miui/vsimcore/utils/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .registers 2

    .line 443
    :try_start_0
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->aF()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 444
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->aG()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "virtualsim.key1"

    .line 447
    invoke-static {v0}, Lcom/miui/vsimcore/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 449
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/vsimcore/utils/a;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_21
    const-string v0, "com.miui.virtualsim.imei.new"

    .line 452
    invoke-static {v0}, Lcom/miui/vsimcore/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    return-object v0

    :cond_2e
    const-string v0, "android.system.com.miui.virtualsim.imei"

    .line 457
    invoke-static {v0}, Lcom/miui/vsimcore/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    return-object v0

    .line 464
    :cond_3b
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->aG()Ljava/lang/String;

    move-result-object v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    return-object v0

    :catch_40
    const-string v0, "VSC-CommonUtil"

    const-string v1, "failed to get imei"

    .line 466
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "permission_imei"

    const/4 v1, 0x0

    .line 502
    invoke-static {v0, v1}, Lcom/miui/vsimcore/utils/c;->a(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "result"

    .line 504
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    const-string v1, "VSC-CommonUtil"

    const-string v2, "fail to getTelephone"

    .line 507
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const-string v0, ""

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 527
    invoke-static {v0}, Lcom/miui/vsimcore/utils/c;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 528
    invoke-static {v2}, Lcom/miui/vsimcore/utils/c;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_1d

    .line 531
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v1, "-"

    .line 533
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_2f

    .line 535
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()Z
    .registers 2

    const-string v0, "leo"

    .line 554
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static q()Z
    .registers 2

    const-string v0, "X7-LTE-ALL"

    const-string v1, "persist.radio.modem"

    .line 558
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static r()Z
    .registers 2

    const-string v0, "LTE-X5-ALL"

    const-string v1, "persist.radio.modem"

    .line 562
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static s()Z
    .registers 2

    const-string v0, "LTE-X5"

    const-string v1, "persist.radio.modem"

    .line 566
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static t()Z
    .registers 2

    const-string v0, "cancro"

    .line 570
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static u()Z
    .registers 2

    .line 574
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->t()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MI 3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static v()Z
    .registers 2

    .line 578
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->t()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "LTE-CT"

    const-string v1, "persist.radio.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static w()Z
    .registers 2

    .line 582
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->t()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "LTE-CU"

    const-string v1, "persist.radio.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static x()Z
    .registers 2

    .line 586
    invoke-static {}, Lcom/miui/vsimcore/utils/c;->t()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "LTE-CMCC"

    const-string v1, "persist.radio.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static y()Z
    .registers 2

    const-string v0, "virgo"

    .line 590
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static z()Z
    .registers 2

    const-string v0, "libra"

    .line 594
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
