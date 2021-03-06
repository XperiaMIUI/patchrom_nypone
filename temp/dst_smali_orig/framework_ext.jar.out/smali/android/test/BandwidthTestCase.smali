.class public Landroid/test/BandwidthTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "BandwidthTestCase.java"


# static fields
.field private static final REPORT_KEY_BYTES_RECEIVED:Ljava/lang/String; = "rxBytes"

.field private static final REPORT_KEY_BYTES_SENT:Ljava/lang/String; = "txBytes"

.field private static final REPORT_KEY_OPERATIONS:Ljava/lang/String; = "operations"

.field private static final REPORT_KEY_PACKETS_RECEIVED:Ljava/lang/String; = "rxPackets"

.field private static final REPORT_KEY_PACKETS_SENT:Ljava/lang/String; = "txPackets"

.field private static final TAG:Ljava/lang/String; = "BandwidthTestCase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/test/BandwidthTestCase;Ljava/lang/reflect/Method;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/test/BandwidthTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    return-void
.end method

.method private getBandwidthStats(Landroid/net/NetworkStats$Entry;)Landroid/os/Bundle;
    .locals 4
    .parameter "entry"

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "rxBytes"

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "txBytes"

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "rxPackets"

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "txPackets"

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "operations"

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method private runMethod(Ljava/lang/reflect/Method;IZ)V
    .locals 7
    .parameter "runMethod"
    .parameter "tolerance"
    .parameter "isRepetitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .local v1, exception:Ljava/lang/Throwable;
    const/4 v3, 0x0

    .local v3, runCount:I
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    add-int/lit8 v3, v3, 0x1

    if-eqz p3, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, iterations:Landroid/os/Bundle;
    const-string v4, "currentiterations"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/test/BandwidthTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    :goto_0
    invoke-virtual {v4, v6, v2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .end local v2           #iterations:Landroid/os/Bundle;
    :cond_1
    if-ge v3, p2, :cond_2

    if-nez p3, :cond_0

    if-nez v1, :cond_0

    :cond_2
    if-eqz v1, :cond_4

    throw v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    if-eqz p3, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .restart local v2       #iterations:Landroid/os/Bundle;
    const-string v4, "currentiterations"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/test/BandwidthTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    goto :goto_0

    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v2           #iterations:Landroid/os/Bundle;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    add-int/lit8 v3, v3, 0x1

    if-eqz p3, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .restart local v2       #iterations:Landroid/os/Bundle;
    const-string v4, "currentiterations"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/test/BandwidthTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    .end local v2           #iterations:Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    add-int/lit8 v3, v3, 0x1

    if-eqz p3, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .restart local v2       #iterations:Landroid/os/Bundle;
    const-string v5, "currentiterations"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/test/BandwidthTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .end local v2           #iterations:Landroid/os/Bundle;
    :cond_3
    throw v4

    :cond_4
    return-void
.end method


# virtual methods
.method protected runTest()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/test/BandwidthTestCase;->getName()Ljava/lang/String;

    move-result-object v9

    .local v9, fName:Ljava/lang/String;
    invoke-static {v9}, Landroid/test/BandwidthTestCase;->assertNotNull(Ljava/lang/Object;)V

    const/4 v12, 0x0

    .local v12, method:Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    .local v15, testClass:Ljava/lang/Class;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v15, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_0
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" should be public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/test/BandwidthTestCase;->fail(Ljava/lang/String;)V

    :cond_0
    const/4 v13, 0x1

    .local v13, runCount:I
    const/4 v10, 0x0

    .local v10, isRepetitive:Z
    const-class v1, Landroid/test/FlakyTest;

    invoke-virtual {v12, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Landroid/test/FlakyTest;

    invoke-virtual {v12, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroid/test/FlakyTest;

    invoke-interface {v1}, Landroid/test/FlakyTest;->tolerance()I

    move-result v13

    :cond_1
    :goto_1
    const-class v1, Landroid/test/UiThreadTest;

    invoke-virtual {v12, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v4, v13

    .local v4, tolerance:I
    move v5, v10

    .local v5, repetitive:Z
    move-object v3, v12

    .local v3, testMethod:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Throwable;

    .local v6, exceptions:[Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Landroid/test/BandwidthTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v16

    new-instance v1, Landroid/test/BandwidthTestCase$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/test/BandwidthTestCase$1;-><init>(Landroid/test/BandwidthTestCase;Ljava/lang/reflect/Method;IZ[Ljava/lang/Throwable;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    aget-object v1, v6, v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    aget-object v1, v6, v1

    throw v1

    .end local v3           #testMethod:Ljava/lang/reflect/Method;
    .end local v4           #tolerance:I
    .end local v5           #repetitive:Z
    .end local v6           #exceptions:[Ljava/lang/Throwable;
    .end local v10           #isRepetitive:Z
    .end local v13           #runCount:I
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/test/BandwidthTestCase;->fail(Ljava/lang/String;)V

    goto :goto_0

    .end local v7           #e:Ljava/lang/NoSuchMethodException;
    .restart local v10       #isRepetitive:Z
    .restart local v13       #runCount:I
    :cond_2
    const-class v1, Landroid/test/RepetitiveTest;

    invoke-virtual {v12, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Landroid/test/RepetitiveTest;

    invoke-virtual {v12, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroid/test/RepetitiveTest;

    invoke-interface {v1}, Landroid/test/RepetitiveTest;->numIterations()I

    move-result v13

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const-class v1, Landroid/test/BandwidthTest;

    invoke-virtual {v12, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    const-class v1, Landroid/test/BandwidthTest;

    invoke-virtual {v15, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Landroid/net/TrafficStats;->startDataProfiling(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1, v2}, Landroid/test/BandwidthTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Landroid/net/TrafficStats;->stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v14

    .local v14, stats:Landroid/net/NetworkStats;
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v8

    .local v8, entry:Landroid/net/NetworkStats$Entry;
    invoke-virtual/range {p0 .. p0}, Landroid/test/BandwidthTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/test/BandwidthTestCase;->getBandwidthStats(Landroid/net/NetworkStats$Entry;)Landroid/os/Bundle;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v8           #entry:Landroid/net/NetworkStats$Entry;
    .end local v14           #stats:Landroid/net/NetworkStats;
    :cond_5
    :goto_3
    return-void

    :catch_1
    move-exception v11

    .local v11, isx:Ljava/lang/IllegalStateException;
    const-string v1, "BandwidthTestCase"

    const-string v2, "Failed to start bandwidth profiling"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v11           #isx:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v11

    .restart local v11       #isx:Ljava/lang/IllegalStateException;
    const-string v1, "BandwidthTestCase"

    const-string v2, "Failed to collect bandwidth stats"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v11           #isx:Ljava/lang/IllegalStateException;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v10}, Landroid/test/BandwidthTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    goto :goto_3
.end method
